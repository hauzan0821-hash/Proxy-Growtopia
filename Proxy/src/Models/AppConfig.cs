namespace Proxy.Models;

public sealed class AppConfig
{
    public KeyAuthConfig KeyAuth { get; init; } = new();
    public ProxyConfig Proxy { get; init; } = new();
}
