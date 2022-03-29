namespace Ats.Gop
{
    internal static class Constants
    {
        internal const string SmtpHost = "smtp.office365.com";
        internal const int SmtpPort = 587;

        internal const string FromName = "Ahmed Burak";
        internal const string FromAddress = "abhamamci@hotmail.com";

        internal static byte[] Key { get { return new byte[8] { 1, 2, 3, 4, 5, 6, 7, 8 }; } }
        internal static byte[] Iv { get { return new byte[8] { 1, 2, 3, 4, 5, 6, 7, 8 }; } }
    }
}