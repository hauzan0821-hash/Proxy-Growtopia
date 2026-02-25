namespace Proxy.Models;

public sealed class KeyAuthConfig
{
    public string ApiUrl { get; init; } = "https://keyauth.win/api/1.2/";
    public string AppName { get; init; } = string.Empty;
    public string OwnerId { get; init; } = string.Empty;
    public string Secret { get; init; } = string.Empty;
    public string Version { get; init; } = "1.0";
}
