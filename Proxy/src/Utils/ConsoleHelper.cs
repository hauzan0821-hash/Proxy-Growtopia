namespace Proxy.Utils;

public static class ConsoleHelper
{
    public static void Success(string message)
    {
        Console.ForegroundColor = ConsoleColor.Green;
        Console.WriteLine(message);
        Console.ResetColor();
    }

    public static void Error(string message)
    {
        Console.ForegroundColor = ConsoleColor.Red;
        Console.WriteLine(message);
        Console.ResetColor();
    }

    public static void ErrorAndHold(string message)
    {
        Error(message);
        Console.WriteLine("Tekan ENTER untuk menutup aplikasi.");
        Console.ReadLine();
    }
}
