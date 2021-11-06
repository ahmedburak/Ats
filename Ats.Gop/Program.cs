using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Ats.Gop
{
    class Program
    {
        private static readonly CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();

        static async Task Main(string[] args)
        {
            try
            {
                var stopwatch = new Stopwatch();
                stopwatch.Start();

                //await Task.Run(() =>
                //{
                //    using (var announcementService = new AnnouncementService())
                //    {
                //        announcementService.CheckDefinitions();
                //    }

                //    return Task.CompletedTask;
                //});

                //var dfg = 56;


                var cancelTask = Task.Run(() =>
                {
                    var totalSeconds = 600;

                    while (stopwatch.Elapsed.TotalSeconds < totalSeconds)
                    {
                        Thread.Sleep(TimeSpan.FromSeconds(1));

                        if (cancellationTokenSource.IsCancellationRequested)
                        {
                            return Task.CompletedTask;
                        }

                        var remainingSeconds = (int)(totalSeconds - stopwatch.Elapsed.TotalSeconds);

                        if (remainingSeconds < 10 || remainingSeconds % 60 == 0)
                        {
                            ConsoleHelper.Write($"Programın otomatik kapanmasına {remainingSeconds:F0} saniye kaldı!", ConsoleColor.DarkYellow);
                        }
                    }

                    cancellationTokenSource.Cancel();

                    return Task.CompletedTask;
                }, cancellationTokenSource.Token);

                var mainTask = Task.Run(() =>
                {
                    Thread.Sleep(TimeSpan.FromSeconds(3)); // Cancellation Task'ı önce çalışsın diye biraz bekliyor.

                    /*
  update [Ats].[dbo].[AnnouncementDefinitions] set Status = 1 where Url like '%www.gop.edu.tr%' or Url like '%niksarmyo%'
                     */
                    using (var announcementService = new AnnouncementService())
                    {
                        announcementService.Execute();
                    }

                    cancellationTokenSource.Cancel();

                    return Task.CompletedTask;
                }, cancellationTokenSource.Token);

                var taskList = new List<Task> { cancelTask, mainTask };

                await Task.WhenAny(taskList);

                ConsoleHelper.WriteLine($"Main Task IsCompleted: {mainTask.IsCompleted}", ConsoleColor.DarkMagenta);
                ConsoleHelper.WriteLine($"Cancel Task IsCompleted: {cancelTask.IsCompleted}", ConsoleColor.DarkMagenta);

                ConsoleHelper.WriteLine("İşlem bitti, kapanıyor....", ConsoleColor.Cyan);

                Process.GetProcesses().Where(x => x.ProcessName.Contains("phantom")).ToList().ForEach(x => x.Kill());
            }
            catch (Exception exception)
            {
                ConsoleHelper.WriteLine(exception, null);
                ConsoleHelper.WriteLine("Bir hata oluştu, kapanıyor....", ConsoleColor.Red);
            }

            await Task.Delay(TimeSpan.FromSeconds(5));
        }
    }
}