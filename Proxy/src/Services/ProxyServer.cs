using Proxy.Models;

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

        Console.WriteLine($"[Proxy] Listening on {_config.ListenIp}:{_config.ListenPort}");
        Console.WriteLine($"[Proxy] Forwarding to {_config.TargetHost}:{_config.TargetPort}");

        try
        {
            while (!cancellationToken.IsCancellationRequested)
            {
                var client = await listener.AcceptTcpClientAsync(cancellationToken);
                _ = HandleClientAsync(client, cancellationToken);
            }
        }
        catch (OperationCanceledException)
        {
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
                Console.WriteLine($"[Proxy] Client disconnected/error: {ex.Message}");
            }
        }
    }
}
