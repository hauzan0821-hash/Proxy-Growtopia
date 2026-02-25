using Proxy.Services;
using Proxy.Utils;

Console.Title = "Growtopia Proxy + KeyAuth (Tester Plan)";

try
{
    var settingsPath = Path.Combine(AppContext.BaseDirectory, "appsettings.json");
    if (!File.Exists(settingsPath))
    {
        ConsoleHelper.ErrorAndHold("appsettings.json tidak ditemukan. Pastikan file ini ada di output build.");
        return;
    }

    var config = ConfigLoader.Load(settingsPath);
    var keyAuthService = new KeyAuthService(config.KeyAuth);

    var initResult = await keyAuthService.InitializeAsync();
    if (!initResult.Success)
    {
        ConsoleHelper.ErrorAndHold($"Inisialisasi KeyAuth gagal: {initResult.Message}");
        return;
    }

    ConsoleHelper.Success("KeyAuth siap. Login tester plan bisa dipakai.");

    Console.Write("Masukkan license key tester: ");
    var license = Console.ReadLine()?.Trim() ?? string.Empty;

    if (string.IsNullOrWhiteSpace(license))
    {
        ConsoleHelper.ErrorAndHold("License key kosong.");
        return;
    }

    var loginResult = await keyAuthService.LicenseLoginAsync(license);
    if (!loginResult.Success)
    {
        ConsoleHelper.ErrorAndHold($"Login gagal: {loginResult.Message}");
        return;
    }

    ConsoleHelper.Success("Login berhasil. Proxy dijalankan...");

    var proxyServer = new ProxyServer(config.Proxy);
    using var cts = new CancellationTokenSource();

    Console.WriteLine("Tekan tombol Q kapan saja untuk stop proxy.");
    _ = Task.Run(() =>
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
}
catch (Exception ex)
{
    ConsoleHelper.ErrorAndHold($"Terjadi error tidak terduga: {ex.Message}");
}
