namespace Proxy.Models;

public sealed class ProxyConfig
{
    public string ListenIp { get; init; } = "127.0.0.1";
    public int ListenPort { get; init; } = 17091;
    public string TargetHost { get; init; } = "213.179.209.168";
    public int TargetPort { get; init; } = 17091;
}
