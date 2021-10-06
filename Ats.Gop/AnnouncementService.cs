using AutoMapper;

using OpenQA.Selenium;
using OpenQA.Selenium.PhantomJS;
using OpenQA.Selenium.Remote;

using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;

namespace Ats.Gop
{
    public class AnnouncementService : IDisposable
    {
        static PhantomJSDriver driver;

        public AnnouncementService()
        {
            driver = new PhantomJSDriver();
            driver.Manage().Window.Size = new Size(1600, 900);

            ConsoleHelper.WriteBlankLine(2);
            ConsoleHelper.WriteLine("Phantom Başlatıldı!");
        }

        ~AnnouncementService()
        {
            Dispose(false);

            ConsoleHelper.WriteLine("Destructor - Phantom Durduruluyor!", ConsoleColor.White);

            if (driver != null)
            {
                driver.Dispose();
            }

            ConsoleHelper.WriteLine("Destructor - Phantom Durduruldu!", ConsoleColor.White);
        }

        public void Execute()
        {
            try
            {
                GetNewDefinitionsAndSendMail();
            }
            catch (Exception ex)
            {
                ConsoleHelper.WriteLine(ex, "Bilinmeyen bir hata oluştu!");
            }
            finally
            {
                ConsoleHelper.WriteLine("AnnouncementService Kapanıyor...");
            }
        }

        public void CheckDefinitions()
        {
            var messages = new List<Tuple<int, string>>();

            var definitions = GetDefinitions();

            ConsoleHelper.WriteLine($"Toplam taranacak sayfa sayısı {definitions.Count}");

            foreach (var item in definitions)
            {
                if (driver.SessionId == null)
                {
                    break;
                }

                driver.Navigate().GoToUrl(item.Url);

                if (driver.Url == "about:blank")
                {
                    ConsoleHelper.Write($"Url erişimi başarısız => {item.Url}", ConsoleColor.Red);

                    continue;
                }

                ConsoleHelper.Write($"Url => {item.Url}");

                try
                {
                    try
                    {
                        var elements = driver.FindElements(By.CssSelector(item.ClickCssSelector));

                        if (elements.Count > 1)
                        {
                            throw new Exception("Beklenenden fazla tıklanacak element bulundu!");
                        }

                        if (elements.Count == 1)
                        {
                            elements.FirstOrDefault().Click();
                        }
                    }
                    catch (Exception ex)
                    {
                        ConsoleHelper.WriteLine("Tıklama hatası!", ConsoleColor.Cyan);
                    }

                    var rows = new List<IWebElement>();

                    try
                    {
                        rows = driver.FindElements(By.CssSelector(item.RowCssSelector)).Where(x => x != null && x.Displayed).ToList();
                    }
                    catch (Exception ex)
                    {
                        ConsoleHelper.WriteLine("Satırları alma hatası!", ConsoleColor.Cyan);
                        rows = null;
                    }

                    if (rows == null || rows.Count == 0)
                    {
                        messages.Add(new Tuple<int, string>(0, item.Description));

                        continue;
                    }

                    messages.Add(new Tuple<int, string>(rows.Count, item.Description));
                }
                catch (Exception ex)
                {
                    ConsoleHelper.WriteLine(ex, "GetAnnouncements hatası!");
                }
            }

            ConsoleHelper.WriteBlankLine(2);

            ConsoleHelper.WriteLine($"Toplam bulunan sayfa sayısı {messages.Count}");

            foreach (var item in messages)
            {
                if (item.Item1 > 0)
                {
                    ConsoleHelper.Write($"{item.Item1:D2} satır => {item.Item2}");
                }
                else
                {
                    ConsoleHelper.Write($"0 satır => {item.Item2}", ConsoleColor.Cyan);
                }
            }
        }

        // Publics
        public void GetNewDefinitionsAndSendMail()
        {
            var allAnnouncements = new List<Announcement>();

            foreach (var item in GetDefinitions())
            {
                try
                {
                    if (driver.SessionId == null)
                    {
                        break;
                    }

                    if (!driver.Url.Equals(item.Url))
                    {
                        ConsoleHelper.WriteLine($"{item.Description} sayfasına gidiliyor. Lütfen bekleyiniz!");

                        driver.Navigate().GoToUrl(item.Url);

                        ConsoleHelper.WriteLine($"{item.Url} sayfası açıldı!");
                    }

                    var list = GetAnnouncements(driver, item.TypeId, item.RowCssSelector, item.ClickCssSelector);

                    if (list == null || list.Count.Equals(0))
                    {
                        ConsoleHelper.WriteLine($"Sayfada kaydedilecek yeni veri bulunamadı!");

                        continue;
                    }

                    ConsoleHelper.WriteLine($"Bu sayfada {list.Count} bildirim bulundu!");

                    allAnnouncements.AddRange(list);
                }
                catch (Exception ex)
                {
                    ConsoleHelper.WriteLine(ex, "Genel döngü hatası!");
                }
            }

            ConsoleHelper.WriteLine($"Tüm sayfalarda bulunan toplam bildirim sayısı: {allAnnouncements.Count}!");

            if (allAnnouncements.Count > 0)
            {
                using (var db = new AtsEntities())
                {
                    var emails = db.Emails.ToList();
                    var mailResult = SendMailForNewSavedAnnounces(allAnnouncements, emails);

                    if (mailResult)
                    {
                        try
                        {
                            db.Announcements.AddRange(allAnnouncements);
                            db.SaveChanges();
                        }
                        catch (Exception ex)
                        {
                            ConsoleHelper.WriteLine(ex, "Kayıt hatası!");

                            //db.Rollback();
                        }
                    }
                }
            }
        }

        // Privates
        private bool SendMailForNewSavedAnnounces(List<Announcement> newEntities, List<Email> emails)
        {
            try
            {
                var body = string.Empty;

                foreach (var item in newEntities)
                {
                    body += $"<a href='{item.Url}'>{item.Text}</a></br>";
                }

                var templateFileFullName = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "email_template.html");

                if (File.Exists(templateFileFullName))
                {
                    //body = File.ReadAllText(templateFileFullName);
                }

                var mailMessage = new MailMessage
                {
                    From = new MailAddress("info@trxtarget.com"),
                    Subject = $"Gop Üniversitesinden ({newEntities.Count}) Yeni Bildirim",
                    Body = body,
                    IsBodyHtml = true,
                };

                foreach (var email in emails)
                {
                    mailMessage.To.Clear();
                    mailMessage.To.Add(email.EmailAddress);

                    using (var smtpClient = new SmtpClient("smtp.yandex.com.tr", 587)
                    {
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential("info@trxtarget.com", "6157850x"),
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        EnableSsl = true
                    })
                    {
                        smtpClient.Send(mailMessage);
                    };
                }

                return true;
            }
            catch (Exception ex)
            {
                ConsoleHelper.WriteLine(ex, "Mail gönderme hatası!");

                return false;
            }
        }

        private List<Announcement> GetAnnouncements(RemoteWebDriver driver, byte typeId, string rowsCssSelector, string clickCssSelector)
        {
            try
            {
                if (clickCssSelector != null)
                {
                    try
                    {
                        ConsoleHelper.WriteLine($"Tıklanacak element bulundu: {clickCssSelector}!");

                        driver.FindElement(By.CssSelector(clickCssSelector)).Click();
                    }
                    catch (Exception ex)
                    {
                        ConsoleHelper.WriteLine(ex, "Tıklama hatası!");
                    }
                }

                var rows = new List<IWebElement>();

                try
                {
                    rows = driver.FindElements(By.CssSelector(rowsCssSelector)).Where(x => x != null && x.Displayed).ToList();
                }
                catch (Exception ex)
                {
                    ConsoleHelper.WriteLine(ex, "Satırları alma hatası!");
                    rows = null;
                }

                if (rows == null)
                {
                    return default;
                }

                ConsoleHelper.WriteLine($"Tablodaki kayıtlar inceleniyor! Toplam {rows.Count} satır veri bulundu!");

                var target = new List<Announcement>();

                using (var db = new AtsEntities())
                {
                    for (var i = 0; i < rows.Count; i++)
                    {
                        var row = rows[i];

                        try
                        {
                            var columns = row.FindElements(By.XPath("td")).ToList();
                            var url = columns.FirstOrDefault().FindElement(By.TagName("a")).GetAttribute("href");
                            var splittedDateValues = columns[1].Text.Split(' ');
                            int? monthId;

                            switch (splittedDateValues[1])
                            {
                                case "Ocak": monthId = 1; break;
                                case "Şubat": monthId = 2; break;
                                case "Mart": monthId = 3; break;
                                case "Nisan": monthId = 4; break;
                                case "Mayıs": monthId = 5; break;
                                case "Haziran": monthId = 6; break;
                                case "Temmuz": monthId = 7; break;
                                case "Ağustos": monthId = 8; break;
                                case "Eylül": monthId = 9; break;
                                case "Ekim": monthId = 10; break;
                                case "Kasım": monthId = 11; break;
                                case "Aralık": monthId = 12; break;
                                default: monthId = null; break;
                            }

                            if (!monthId.HasValue || !int.TryParse(splittedDateValues[2], out int year) || !int.TryParse(splittedDateValues[0], out int day))
                            {
                                continue;
                            }

                            var text = columns[0].Text;
                            var date = new DateTime(year, monthId.Value, day);

                            if (string.IsNullOrEmpty(text) || string.IsNullOrEmpty(url) || db.Announcements.Any(x => x.Text == text && x.Date == date && x.Url == url))
                            {
                                //ConsoleHelper.Write($"Tablodaki {i + 1}. kayıt zaten mevcut!");

                                continue;
                            }

                            if (text.Length > 3999)
                            {
                                text = text.Substring(0, 3999);
                            }

                            if (url.Length > 499)
                            {
                                url = url.Substring(0, 499);
                            }

                            target.Add(new Announcement
                            {
                                Text = text,
                                Url = url,
                                Date = date,
                                TypeId = typeId,
                            });
                        }
                        catch (Exception ex)
                        {
                            ConsoleHelper.WriteLine(ex, "Satırlar arasında gezerken oluşan bir hata!");
                        }
                    }
                }

                ConsoleHelper.WriteLine($"Tablodaki kayıt incelemeleri tamamlandı!");

                return target;
            }
            catch (Exception ex)
            {
                ConsoleHelper.WriteLine(ex, "GetAnnouncements hatası!");

                return default;
            }
        }

        private List<AnnouncementDefinition> GetDefinitions()
        {
            using (var db = new AtsEntities())
            {
                return db.AnnouncementDefinitions.ToList();
            }
        }

        private static List<T> MapList<S, T>(object source)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<S, T>();
            });

            var mapper = config.CreateMapper();
            var result = mapper.Map<List<S>, List<T>>((List<S>)source);

            return result;
        }

        bool isDisposed;

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (isDisposed)
            {
                return;
            }

            if (disposing)
            {
                ConsoleHelper.WriteBlankLine(2);

                if (driver != null)
                {
                    driver.Dispose();
                }

                ConsoleHelper.WriteBlankLine(2);

                ConsoleHelper.WriteLine("Dispose - Phantom Durduruldu!", ConsoleColor.Cyan);
            }

            isDisposed = true;
        }
    }
}