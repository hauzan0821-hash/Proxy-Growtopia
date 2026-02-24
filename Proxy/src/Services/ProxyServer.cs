namespace Proxy.Services;

public sealed class ProxyServer
{
    private readonly ProxyConfig _config;

    public ProxyServer(ProxyConfig config)
    {
        _config = config;
    }

    public async Task RunAsync(CancellationToken cancellationToken)
    {
        var listener = new System.Net.Sockets.TcpListener(System.Net.IPAddress.Parse(_config.ListenIp), _config.ListenPort);
        listener.Start();

        Console.ForegroundColor = ConsoleColor.Green;
        Console.WriteLine($"[Proxy] Listening on {_config.ListenIp}:{_config.ListenPort}");
        Console.WriteLine($"[Proxy] Forwarding to {_config.TargetHost}:{_config.TargetPort}");
        Console.ResetColor();

        try
        {
            while (!cancellationToken.IsCancellationRequested)
            {
                if (!listener.Pending())
                {
                    await Task.Delay(100, cancellationToken);
                    continue;
                }

                var client = await listener.AcceptTcpClientAsync(cancellationToken);
                _ = HandleClientAsync(client, cancellationToken);
            }
        }
        finally
        {
            listener.Stop();
        }
    }

    private async Task HandleClientAsync(System.Net.Sockets.TcpClient client, CancellationToken cancellationToken)
    {
        using (client)
        using (var target = new System.Net.Sockets.TcpClient())
        {
            try
            {
                await target.ConnectAsync(_config.TargetHost, _config.TargetPort, cancellationToken);

                await using var clientStream = client.GetStream();
                await using var targetStream = target.GetStream();

                var toTarget = clientStream.CopyToAsync(targetStream, cancellationToken);
                var toClient = targetStream.CopyToAsync(clientStream, cancellationToken);

                await Task.WhenAny(toTarget, toClient);
            }
            catch (Exception ex)
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine($"[Proxy] Client disconnected/error: {ex.Message}");
                Console.ResetColor();
            }
        }
    }
}

public sealed class ProxyConfig
{
    public string ListenIp { get; init; } = "127.0.0.1";
    public int ListenPort { get; init; } = 17091;
    public string TargetHost { get; init; } = "213.179.209.168";
    public int TargetPort { get; init; } = 17091;
}
