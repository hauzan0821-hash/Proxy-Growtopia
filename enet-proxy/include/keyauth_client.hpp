#pragma once

#include <string>

struct KeyAuthConfig {
    bool enabled = true;
    std::string apiUrl = "https://keyauth.win/api/seller/";
    std::string ownerId = "KRZWWBf8dt";
    std::string secretId = "8c17983afece3659d7c8d9b6bf0b3e778a75df88a74e6173cc2819dcbd5e5cef";
    std::string appName = "GTProxy";
    long timeoutSeconds = 15;
};

class KeyAuthClient {
  public:
    explicit KeyAuthClient(KeyAuthConfig cfg);

    bool verifyUsername(const std::string& username, std::string& reason);

  private:
    KeyAuthConfig cfg_;
};
