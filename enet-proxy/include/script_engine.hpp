#pragma once

#include <functional>
#include <string>

class ScriptEngine {
  public:
    using SendPacketCallback = std::function<void(int, const std::string&)>;
    using ConsoleCallback = std::function<void(const std::string&)>;

    struct Impl;

    ScriptEngine() = default;
    ~ScriptEngine();

    bool initialize(const std::string& scriptPath, SendPacketCallback sendCb, ConsoleCallback logCb);

    bool onPacketOut(int type, const std::string& packet);
    bool onPacketIn(int type, const std::string& packet);

    bool available() const;

  private:
    Impl* impl_ = nullptr;
};
