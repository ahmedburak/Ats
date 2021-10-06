﻿using System;
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
                Stopwatch stopwatch = new Stopwatch();
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

                        ConsoleHelper.WriteLine($"Programın sonlanmasına {totalSeconds - stopwatch.Elapsed.TotalSeconds:F0} saniye kaldı!", ConsoleColor.DarkGray);
                    }

                    cancellationTokenSource.Cancel();

                    return Task.CompletedTask;
                }, cancellationTokenSource.Token);

                var mainTask = Task.Run(() =>
                {
                    Thread.Sleep(TimeSpan.FromSeconds(3)); // Cancellation Task'ı önce çalışsın diye biraz bekliyor.

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