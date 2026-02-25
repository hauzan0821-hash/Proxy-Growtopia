#include "keyauth_client.hpp"

#include <curl/curl.h>

#include <sstream>

namespace {
size_t writeCb(void* contents, size_t size, size_t nmemb, void* userp) {
    const size_t total = size * nmemb;
    auto* str = static_cast<std::string*>(userp);
    str->append(static_cast<char*>(contents), total);
    return total;
}

bool hasSuccessToken(const std::string& body) {
    return body.find("\"success\":true") != std::string::npos ||
           body.find("\"status\":\"success\"") != std::string::npos ||
           body.find("\"valid\":true") != std::string::npos;
}

std::string extractMessage(const std::string& body) {
    auto pos = body.find("\"message\"");
    if (pos == std::string::npos) return body;
    auto colon = body.find(':', pos);
    if (colon == std::string::npos) return body;
    auto q1 = body.find('"', colon + 1);
    if (q1 == std::string::npos) return body;
    auto q2 = body.find('"', q1 + 1);
    if (q2 == std::string::npos) return body;
    return body.substr(q1 + 1, q2 - q1 - 1);
}
} // namespace

KeyAuthClient::KeyAuthClient(KeyAuthConfig cfg) : cfg_(std::move(cfg)) {}

bool KeyAuthClient::verifyUsername(const std::string& username, std::string& reason) {
    if (!cfg_.enabled) {
        reason = "KeyAuth disabled";
        return true;
    }

    if (username.empty()) {
        reason = "Username kosong";
        return false;
    }

    CURL* curl = curl_easy_init();
    if (!curl) {
        reason = "curl init failed";
        return false;
    }

    std::string response;

    char* escOwner = curl_easy_escape(curl, cfg_.ownerId.c_str(), static_cast<int>(cfg_.ownerId.size()));
    char* escSecret = curl_easy_escape(curl, cfg_.secretId.c_str(), static_cast<int>(cfg_.secretId.size()));
    char* escUser = curl_easy_escape(curl, username.c_str(), static_cast<int>(username.size()));
    char* escName = curl_easy_escape(curl, cfg_.appName.c_str(), static_cast<int>(cfg_.appName.size()));

    std::ostringstream post;
    post << "type=verify_username"
         << "&ownerid=" << (escOwner ? escOwner : "")
         << "&secret=" << (escSecret ? escSecret : "")
         << "&name=" << (escName ? escName : "")
         << "&username=" << (escUser ? escUser : "");

    if (escOwner) curl_free(escOwner);
    if (escSecret) curl_free(escSecret);
    if (escUser) curl_free(escUser);
    if (escName) curl_free(escName);

    curl_easy_setopt(curl, CURLOPT_URL, cfg_.apiUrl.c_str());
    curl_easy_setopt(curl, CURLOPT_POST, 1L);
    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, post.str().c_str());
    curl_easy_setopt(curl, CURLOPT_TIMEOUT, cfg_.timeoutSeconds);
    curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeCb);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 1L);

    CURLcode res = curl_easy_perform(curl);
    long code = 0;
    curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &code);
    curl_easy_cleanup(curl);

    if (res != CURLE_OK) {
        reason = std::string("request failed: ") + curl_easy_strerror(res);
        return false;
    }

    if (code < 200 || code >= 300) {
        reason = "HTTP " + std::to_string(code) + " body=" + response;
        return false;
    }

    if (!hasSuccessToken(response)) {
        reason = extractMessage(response);
        return false;
    }

    reason = "OK";
    return true;
}
