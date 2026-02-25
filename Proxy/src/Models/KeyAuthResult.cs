namespace Proxy.Models;

public sealed record KeyAuthResult(bool Success, string Message, string? RawJson = null)
{
    public static KeyAuthResult Ok(string message, string? rawJson = null) => new(true, message, rawJson);
    public static KeyAuthResult Fail(string message) => new(false, message);
}
