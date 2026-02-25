using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using Proxy.Models;

namespace Proxy.Services;

public sealed class KeyAuthService
{
    private readonly HttpClient _httpClient = new();
    private readonly KeyAuthConfig _config;
    private string _sessionId = string.Empty;

    public KeyAuthService(KeyAuthConfig config)
    {
        _config = config;
    }

    public async Task<KeyAuthResult> InitializeAsync()
    {
        var payload = new Dictionary<string, string>
        {
            ["type"] = "init",
            ["name"] = _config.AppName,
            ["ownerid"] = _config.OwnerId,
            ["ver"] = _config.Version,
            ["hash"] = ComputeHash(),
        };

        if (!string.IsNullOrWhiteSpace(_config.Secret))
        {
            payload["secret"] = _config.Secret;
        }

        var apiResponse = await PostAsync(payload);
        if (!apiResponse.Success)
        {
            return apiResponse;
        }

        using var doc = JsonDocument.Parse(apiResponse.RawJson!);
        var root = doc.RootElement;

        if (!root.TryGetProperty("sessionid", out var sessionProperty))
        {
            return KeyAuthResult.Fail("Init sukses tapi sessionid tidak ditemukan.");
        }

        _sessionId = sessionProperty.GetString() ?? string.Empty;
        return KeyAuthResult.Ok("Init sukses");
    }

    public async Task<KeyAuthResult> LicenseLoginAsync(string license)
    {
        if (string.IsNullOrWhiteSpace(_sessionId))
        {
            return KeyAuthResult.Fail("Session belum dibuat. Jalankan init dulu.");
        }

        var payload = new Dictionary<string, string>
        {
            ["type"] = "license",
            ["name"] = _config.AppName,
            ["ownerid"] = _config.OwnerId,
            ["sessionid"] = _sessionId,
            ["key"] = license,
            ["hwid"] = Environment.MachineName,
        };

        if (!string.IsNullOrWhiteSpace(_config.Secret))
        {
            payload["secret"] = _config.Secret;
        }

        return await PostAsync(payload);
    }

    private async Task<KeyAuthResult> PostAsync(Dictionary<string, string> payload)
    {
        using var response = await _httpClient.PostAsync(_config.ApiUrl, new FormUrlEncodedContent(payload));
        var content = await response.Content.ReadAsStringAsync();

        if (!response.IsSuccessStatusCode)
        {
            return KeyAuthResult.Fail($"HTTP {(int)response.StatusCode}: {content}");
        }

        using var doc = JsonDocument.Parse(content);
        var root = doc.RootElement;

        if (!root.TryGetProperty("success", out var successProp) || !successProp.GetBoolean())
        {
            var message = root.TryGetProperty("message", out var msgProp)
                ? msgProp.GetString()
                : "Request gagal tanpa pesan";

            return KeyAuthResult.Fail(message ?? "Request gagal tanpa pesan");
        }

        return KeyAuthResult.Ok("OK", content);
    }

    private static string ComputeHash()
    {
        using var sha256 = SHA256.Create();
        var bytes = Encoding.UTF8.GetBytes($"proxy-{Environment.MachineName}-tester-plan");
        var hash = sha256.ComputeHash(bytes);
        return Convert.ToHexString(hash).ToLowerInvariant();
    }
}
