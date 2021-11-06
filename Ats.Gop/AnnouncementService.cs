using AutoMapper;

using OpenQA.Selenium;
using OpenQA.Selenium.PhantomJS;
using OpenQA.Selenium.Remote;

using System;
using System.Collections.Generic;
using System.Data.Entity;
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

        public List<AnnouncementDefinition> CheckDefinitions()
        {
            var messages = new List<Tuple<int, string>>();

            ConsoleHelper.WriteBlankLine();
            ConsoleHelper.Write($"Sistemde kayıtlı tüm adresler kontrol ediliyor...", ConsoleColor.White);

            var checkedDefinitions = new List<AnnouncementDefinition>();
            var failedUrls = new List<AnnouncementDefinition>();

            foreach (var item in GetDefinitions())
            {
                if (driver.Url == item.Url)
                {
                    checkedDefinitions.Add(item);
                    continue;
                }

                driver.Navigate().GoToUrl(item.Url);

                if (driver.Url != item.Url)
                {
                    ConsoleHelper.Write($"-- Url erişimi başarısız => {item.Url}", ConsoleColor.Red);

                    item.Status = false;

                    failedUrls.Add(item);
                }
                else
                {
                    ConsoleHelper.Write($"-- Url erişimi başarılı! => {item.Url}", ConsoleColor.Blue);
                    checkedDefinitions.Add(item);
                }
            }

            if (failedUrls.Count > 0)
            {
                using (var db = new AtsEntities())
                {
                    var savedCount = 0;

                    try
                    {
                        foreach (var item in failedUrls)
                        {
                            db.Entry(item).State = EntityState.Modified;
                        }

                        savedCount = db.SaveChanges();
                    }
                    catch (Exception ex)
                    {
                        //db.Rollback();

                        ConsoleHelper.WriteLine(ex, "Kayıt hatası!");
                    }

                    if (savedCount > 0)
                    {
                        ConsoleHelper.WriteLine($"{savedCount} adet URL erişim problemi nedeniyle pasif olarak işaretlendi!", ConsoleColor.Red);
                    }
                    else
                    {
                        ConsoleHelper.WriteLine("Veritabanına güncelleme atılırken bir sorun meydana geldi!");
                    }
                }
            }

            ConsoleHelper.WriteBlankLine();
            ConsoleHelper.Write($"Geçerli Url adreslerinde ELEMENT kontrolleri yapılıyor...", ConsoleColor.White);

            foreach (var item in checkedDefinitions)
            {
                if (driver.Url != item.Url)
                {
                    driver.Navigate().GoToUrl(item.Url);
                }

                ConsoleHelper.Write($" -'{item.Description}' sayfasında elementler kontrol ediliyor...", ConsoleColor.Blue);

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
                            //ConsoleHelper.Write($" --{elements.Count} element bulundu...", ConsoleColor.Magenta);

                            elements.FirstOrDefault().Click();
                        }
                    }
                    catch (Exception ex)
                    {
                        ConsoleHelper.WriteLine("Tıklama hatası!", ConsoleColor.Red);
                    }

                    var rows = new List<IWebElement>();

                    try
                    {
                        rows = driver.FindElements(By.CssSelector(item.RowCssSelector)).Where(x => x != null && x.Displayed).ToList();
                    }
                    catch (Exception ex)
                    {
                        ConsoleHelper.Write("Satırları alma hatası!", ConsoleColor.Red);
                        rows = null;
                    }

                    if (rows == null)
                    {
                        rows = new List<IWebElement>();
                    }

                    ConsoleHelper.Write($" --{rows.Count} satır bulundu...", ConsoleColor.Yellow);

                    messages.Add(new Tuple<int, string>(rows.Count, item.Description));
                }
                catch (Exception ex)
                {
                    ConsoleHelper.WriteLine(ex, "GetAnnouncements hatası!");
                }
            }

            ConsoleHelper.WriteBlankLine();
            ConsoleHelper.WriteLine($"Toplam incelenen sayfa sayısı: {messages.Count}");

            foreach (var item in messages)
            {
                if (item.Item1 > 0)
                {
                    ConsoleHelper.Write($"{item.Item1:D2} satır => {item.Item2}");
                }
                else
                {
                    ConsoleHelper.Write($"0 satır => {item.Item2}", ConsoleColor.Magenta);
                }
            }

            return checkedDefinitions.Where(x => messages.Any(y => y.Item2.Equals(x.Description) && y.Item1 > 0)).ToList();
        }

        // Publics
        public void GetNewDefinitionsAndSendMail()
        {
            var allAnnouncements = new List<Announcement>();

            var newColorList = new List<int> { 9, 13, 14 }; // 1, 2, 3, 6, 10, 11,

            var random = new Random();
            var lastIndex = -1;
            var selectedIndex = 0;

            foreach (var item in CheckDefinitions())
            {
                try
                {
                    if (driver.SessionId == null)
                    {
                        break;
                    }

                    ConsoleHelper.WriteBlankLine();

                    do
                    {
                        selectedIndex = random.Next(newColorList.Count - 1);
                    } while (selectedIndex == lastIndex);

                    lastIndex = selectedIndex;

                    var selectedConsoleColor = (ConsoleColor)newColorList.ElementAt(selectedIndex);

                    if (!driver.Url.Equals(item.Url))
                    {
                        driver.Navigate().GoToUrl(item.Url);
                    }

                    if (!driver.Url.Equals(item.Url))
                    {
                        ConsoleHelper.Write($"{item.Url} sayfası açılamadı!", ConsoleColor.Red);

                        continue;
                    }

                    ConsoleHelper.Write($"{item.Description} sayfasında yeni kayıtlar aranıyor...", selectedConsoleColor);

                    var list = GetAnnouncements(driver, item.PkId, item.RowCssSelector, item.ClickCssSelector);

                    if (list == null || list.Count.Equals(0))
                    {
                        ConsoleHelper.Write($"Sayfada kaydedilecek yeni veri bulunamadı!", selectedConsoleColor);

                        continue;
                    }

                    ConsoleHelper.Write($"Bu sayfada veritabanına kaydedilecek {list.Count} adet yeni bildirim bulundu!", selectedConsoleColor);

                    allAnnouncements.AddRange(list);
                }
                catch (Exception ex)
                {
                    ConsoleHelper.WriteLine(ex, "Genel döngü hatası!");
                }
            }

            ConsoleHelper.WriteBlankLine(2);
            ConsoleHelper.WriteLine($"Tüm sayfalarda bulunan toplam bildirim sayısı: {allAnnouncements.Count}!");

            var now = DateTime.Now;

            allAnnouncements.ForEach(x => x.CreateDate = now);

            if (allAnnouncements.Count > 0)
            {
                using (var db = new AtsEntities())
                {
                    var savedCount = 0;

                    try
                    {
                        db.Announcements.AddRange(allAnnouncements);
                        savedCount = db.SaveChanges();
                    }
                    catch (Exception ex)
                    {
                        //db.Rollback();

                        ConsoleHelper.WriteLine(ex, "Kayıt hatası!");
                    }

                    if (savedCount > 0)
                    {
                        var mailResult = SendMailForNewSavedAnnounces(now);
                    }
                    else
                    {
                        ConsoleHelper.WriteLine("Bulunan yeni bildirimler veritabanına kaydedilemedi!", ConsoleColor.Red);
                    }
                }
            }
        }

        // Privates
        private bool SendMailForNewSavedAnnounces(DateTime dateTime)
        {
            try
            {
                if (dateTime == null || dateTime == DateTime.MinValue)
                {
                    return false;
                }

                var cryptHelper = new CryptHelper();

                using (var db = new AtsEntities())
                {
                    var newEntities = db.Announcements.Where(x => x.CreateDate.Day == dateTime.Day && x.CreateDate.Month == dateTime.Month && x.CreateDate.Year == dateTime.Year).ToList();
                    var emails = db.Emails.ToList();

                    foreach (var email in emails)
                    {
                        var filteredEntities = newEntities.Where(x => x.AnnouncementDefinition.EmailAnnouncementDefinitions.Any(y => y.EmailId.Equals(email.PkId))).ToList();

                        if (filteredEntities.Count != newEntities.Count)
                        {
                            ConsoleHelper.WriteLine("Bazı bildirimler (tanımlı ayarlar gereği) filtrelendi!", ConsoleColor.Red);
                        }

                        var body = string.Empty;

                        foreach (var item in filteredEntities)
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
                            From = new MailAddress(Constants.FromAddress, Constants.FromName),
                            Subject = $"Gop Üniversitesinden ({filteredEntities.Count}) Yeni Bildirim",
                            Body = body,
                            IsBodyHtml = true,
                        };

                        mailMessage.To.Clear();
                        mailMessage.To.Add(email.EmailAddress);

                        using (var smtpClient = new SmtpClient(Constants.SmtpHost, Constants.SmtpPort)
                        {
                            UseDefaultCredentials = false,
                            Credentials = new NetworkCredential(Constants.FromAddress, cryptHelper.Decrypt(EncryptedConstants.FromPassword)),
                            DeliveryMethod = SmtpDeliveryMethod.Network,
                            EnableSsl = true,
                        })
                        {
                            smtpClient.Send(mailMessage);
                        };
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                ConsoleHelper.WriteLine(ex, "Mail gönderme hatası!");

                return false;
            }
        }

        private List<Announcement> GetAnnouncements(RemoteWebDriver driver, int announcementDefinitionId, string rowsCssSelector, string clickCssSelector)
        {
            try
            {
                if (clickCssSelector != null)
                {
                    try
                    {
                        var clickElement = driver.FindElement(By.CssSelector(clickCssSelector));

                        if (clickElement == null)
                        {
                            ConsoleHelper.WriteLine($"Tıklanacak element bulunamadı: {clickCssSelector}!", ConsoleColor.Red);
                        }

                        clickElement.Click();
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

                //ConsoleHelper.Write($"Tablodaki kayıtlar inceleniyor! İncelenecek toplam {rows.Count} satır veri bulundu!");

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
                                AnnouncementDefinitionId = announcementDefinitionId,
                                //CreateDate = DateTime.Now,
                            });
                        }
                        catch (Exception ex)
                        {
                            ConsoleHelper.WriteLine(ex, "Satırlar arasında gezerken oluşan bir hata!");
                        }
                    }
                }

                //ConsoleHelper.Write($"Tablodaki kayıt incelemeleri tamamlandı!");

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
                return db.AnnouncementDefinitions.Where(x => x.Status == true).ToList();
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