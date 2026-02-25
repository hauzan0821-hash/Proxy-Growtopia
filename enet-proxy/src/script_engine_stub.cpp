#include "script_engine.hpp"

ScriptEngine::~ScriptEngine() = default;

bool ScriptEngine::initialize(const std::string&, SendPacketCallback, ConsoleCallback) {
    return false;
}

bool ScriptEngine::onPacketOut(int, const std::string&) { return false; }
bool ScriptEngine::onPacketIn(int, const std::string&) { return false; }
bool ScriptEngine::available() const { return false; }
