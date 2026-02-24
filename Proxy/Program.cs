using System.Text.Json;
using Proxy.Services;

Console.Title = "Growtopia Proxy + KeyAuth (Tester Plan)";

try
{
    var settingsPath = Path.Combine(AppContext.BaseDirectory, "appsettings.json");
    if (!File.Exists(settingsPath))
    {
        FailAndHold("appsettings.json tidak ditemukan. Pastikan file ini ada di output build.");
        return;
    }

    var config = LoadConfig(settingsPath);
    var keyAuthService = new KeyAuthService(config.KeyAuth);

    var initResult = await keyAuthService.InitializeAsync();
    if (!initResult.Success)
    {
        FailAndHold($"Inisialisasi KeyAuth gagal: {initResult.Message}");
        return;
    }

    Success("KeyAuth siap. Login tester plan bisa dipakai.");

    Console.Write("Masukkan license key tester: ");
    var license = Console.ReadLine()?.Trim() ?? string.Empty;

    if (string.IsNullOrWhiteSpace(license))
    {
        FailAndHold("License key kosong.");
        return;
    }

    var loginResult = await keyAuthService.LicenseLoginAsync(license);
    if (!loginResult.Success)
    {
        FailAndHold($"Login gagal: {loginResult.Message}");
        return;
    }

    Success("Login berhasil. Proxy dijalankan...");

    var proxyServer = new ProxyServer(config.Proxy);
    using var cts = new CancellationTokenSource();

    Console.WriteLine("Tekan tombol Q kapan saja untuk stop proxy.");
    var keyTask = Task.Run(() =>
    {
        while (!cts.IsCancellationRequested)
        {
            var key = Console.ReadKey(true);
            if (key.Key == ConsoleKey.Q)
            {
                cts.Cancel();
            }
        }
    });

    await proxyServer.RunAsync(cts.Token);
    await keyTask;
}
catch (Exception ex)
{
    FailAndHold($"Terjadi error tidak terduga: {ex.Message}");
}

static AppConfig LoadConfig(string settingsPath)
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

static void Success(string message)
{
    Console.ForegroundColor = ConsoleColor.Green;
    Console.WriteLine(message);
    Console.ResetColor();
}

static void FailAndHold(string message)
{
    Console.ForegroundColor = ConsoleColor.Red;
    Console.WriteLine(message);
    Console.ResetColor();
    Console.WriteLine("Tekan ENTER untuk menutup aplikasi.");
    Console.ReadLine();
}
