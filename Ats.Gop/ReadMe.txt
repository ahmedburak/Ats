MsSql Server'da "Ats" adında bir veritabanı oluşturulup,
"DatabaseScript.sql" dosyası çalıştırılırsa veritabanı hazır olur.

Programın Çalışma yapısı:

Gaziosmanpaşa Üniversitesinin tüm fakültelerini gezip, Duyuru/Haber'leri alıp veritabanına kaydeder.

Programın herhangi bir noktada takılı kalmasını önlemek için, 600 saniye sonra programı "kill" eden bir programcık çalışıyor. (Asenkron olarak)

Programı veritabanından bağımsız olarak çalıştırmak için, ConsoleHelper class'ındaki "InsertLog" kapatılmalı, AnnouncementService class'ında veritabanının 
kullanıldığı yerler kapatılmalı.