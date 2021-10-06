﻿using System;

namespace Ats.Gop
{
    public static class ConsoleHelper
    {
        public static void WriteLine(Exception exception, string specialMessage)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine(specialMessage);
            Console.WriteLine();
            Console.WriteLine(exception);
            InsertLog(exception, specialMessage);
            Console.WriteLine();
            Console.ResetColor();
        }

        public static void WriteLine(string message, ConsoleColor? consoleColor = null)
        {
            var newMessage = $"{DateTime.Now:HH:mm:ss}: {message}";

            Console.ForegroundColor = ConsoleColor.Green;

            if (consoleColor.HasValue)
            {
                Console.ForegroundColor = consoleColor.Value;
            }

            Console.WriteLine(newMessage);
            Console.WriteLine();
            Console.ResetColor();
        }

        public static void Write(string message, ConsoleColor? consoleColor = null)
        {
            var newMessage = $"{DateTime.Now:HH:mm:ss}: {message}";

            Console.ForegroundColor = ConsoleColor.Green;

            if (consoleColor.HasValue)
            {
                Console.ForegroundColor = consoleColor.Value;
            }

            Console.WriteLine(newMessage);
            Console.ResetColor();
        }

        public static void WriteBlankLine(byte? count = null)
        {
            if (!count.HasValue || count < 2)
            {
                count = 2;
            }

            for (int i = 0; i < count; i++)
            {
                Console.WriteLine();
            }
        }

        public static void InsertLog(Exception obj, string specialMessage)
        {
            try
            {
                using (var db = new AtsEntities())
                {
                    var log = new ExceptionLog
                    {
                        ExceptionDateTime = DateTime.Now,
                        Message = obj.Message ?? string.Empty,
                        StackTrace = obj.StackTrace ?? string.Empty,
                        InnerException = obj.InnerException != null && obj.InnerException.ToString() != null ? obj.InnerException.ToString() : string.Empty,
                        SpecialMessage = specialMessage ?? string.Empty,
                    };

                    var maxLength = 3999;

                    if (log.Message.Length > maxLength)
                    {
                        log.Message = log.Message.Substring(0, maxLength);
                    }
                    if (log.InnerException.Length > maxLength)
                    {
                        log.InnerException = log.InnerException.Substring(0, maxLength);
                    }
                    if (log.StackTrace.Length > maxLength)
                    {
                        log.StackTrace = log.StackTrace.Substring(0, maxLength);
                    }

                    db.ExceptionLogs.Add(log);
                    db.SaveChanges();
                }
            }
            catch (Exception exception)
            {
                WriteLine(exception, null);
                WriteLine("Log kaydederken bir hata oluştu!", ConsoleColor.Red);
            }
        }
    }
}