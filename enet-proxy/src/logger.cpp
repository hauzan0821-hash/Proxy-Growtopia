#include "logger.hpp"

#include <chrono>
#include <ctime>
#include <iomanip>
#include <iostream>
#include <mutex>
#include <sstream>

namespace {
bool g_verbose = true;
std::mutex g_logMutex;

std::string timestamp() {
    using namespace std::chrono;
    const auto now = system_clock::now();
    const auto t = system_clock::to_time_t(now);
    std::tm tm{};
#if defined(_WIN32)
    localtime_s(&tm, &t);
#else
    localtime_r(&t, &tm);
#endif
    std::ostringstream oss;
    oss << std::put_time(&tm, "%H:%M:%S");
    return oss.str();
}

void write(const char* lvl, const std::string& msg) {
    std::lock_guard<std::mutex> guard(g_logMutex);
    std::cout << '[' << timestamp() << "] [" << lvl << "] " << msg << '\n';
}
} // namespace

namespace logx {
void setVerbose(bool enabled) { g_verbose = enabled; }
void info(const std::string& msg) { write("INFO", msg); }
void warn(const std::string& msg) { write("WARN", msg); }
void error(const std::string& msg) { write("ERROR", msg); }
void debug(const std::string& msg) {
    if (g_verbose) {
        write("DEBUG", msg);
    }
}
} // namespace logx
