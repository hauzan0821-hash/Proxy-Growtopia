using System.Text.Json;
using Proxy.Models;

namespace Proxy.Utils;

public static class ConfigLoader
{
    public static AppConfig Load(string settingsPath)
    {
        var json = File.ReadAllText(settingsPath);
        var config = JsonSerializer.Deserialize<AppConfig>(json, new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        });

        if (config is null)
        {
            throw new InvalidOperationException("Konfigurasi appsettings.json tidak valid.");
        }

        if (string.IsNullOrWhiteSpace(config.KeyAuth.AppName) ||
            string.IsNullOrWhiteSpace(config.KeyAuth.OwnerId) ||
            string.IsNullOrWhiteSpace(config.KeyAuth.Version))
        {
            throw new InvalidOperationException("Bagian KeyAuth belum lengkap (AppName/OwnerId/Version).");
        }

        if (string.IsNullOrWhiteSpace(config.Proxy.ListenIp) ||
            string.IsNullOrWhiteSpace(config.Proxy.TargetHost) ||
            config.Proxy.ListenPort <= 0 ||
            config.Proxy.TargetPort <= 0)
        {
            throw new InvalidOperationException("Bagian Proxy belum lengkap/valid.");
        }

        return config;
    }
}
