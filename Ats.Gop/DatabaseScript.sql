USE [Ats]
GO
/****** Object:  Table [dbo].[AnnouncementDefinitions]    Script Date: 03.12.2020 12:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementDefinitions](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](500) NOT NULL,
	[TypeId] [tinyint] NOT NULL,
	[RowCssSelector] [nvarchar](500) NOT NULL,
	[ClickCssSelector] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 03.12.2020 12:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [tinyint] NOT NULL,
	[Text] [nvarchar](4000) NOT NULL,
	[Url] [nvarchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementTypes]    Script Date: 03.12.2020 12:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementTypes](
	[PkId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AnnouncementTypes] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 03.12.2020 12:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExceptionLogs]    Script Date: 03.12.2020 12:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionLogs](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](4000) NOT NULL,
	[SpecialMessage] [nvarchar](4000) NULL,
	[InnerException] [nvarchar](4000) NULL,
	[StackTrace] [nvarchar](4000) NOT NULL,
	[ExceptionDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ExceptionLogs] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnnouncementDefinitions] ON 
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (2, N'https://www.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Gop Duyurular')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (3, N'https://www.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 2, N'#haber > table > tbody > tr', N'#duyurutabnav > li:nth-child(2) > a', N'Gop Haberler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (4, N'https://www.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 3, N'#etkinlik > table > tbody > tr', N'#duyurutabnav > li:nth-child(3) > a', N'Gop Etkinlikler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (5, N'https://niksarmyo.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Niksar Myo')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (6, N'https://karmer.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Kariyer Uygulama ve Ara??t??rma Merkezi')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (7, N'https://togusem.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'S??rekli E??itim Uygulama ve Ara??t??rma Merkezi')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (8, N'https://kutup.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'K??t??phane')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (9, N'https://pdrmer.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Pdr')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (10, N'https://mevlana.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Mevlana')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (11, N'https://farabi.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Farabi')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (12, N'https://erasmus.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=36065&m=duyuru_tum_idari', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Erasmus')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (13, N'https://lisansustu.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Lisans ??st?? Duyurular')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (14, N'https://lisansustu.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 2, N'#haber > table > tbody > tr', N'#duyurutabnav > li:nth-child(2) > a', N'Lisans ??st?? Haberler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (15, N'https://lisansustu.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 3, N'#etkinlik > table > tbody > tr', N'#duyurutabnav > li:nth-child(3) > a', N'Lisans ??st?? Etkinlikler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (16, N'https://disfak.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Di?? Fak??ltesi Duyurular')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (17, N'https://disfak.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 2, N'#haber > table > tbody > tr', N'#duyurutabnav > li:nth-child(2) > a', N'Di?? Fak??ltesi Haberler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (18, N'https://disfak.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 3, N'#etkinlik > table > tbody > tr', N'#duyurutabnav > li:nth-child(3) > a', N'Di?? Fak??ltesi Etkinlikler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (19, N'https://ydyo.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 1, N'#duyuru > table > tbody > tr', N'#duyurutabnav > li:nth-child(1) > a', N'Yabanc?? Diller Duyurular')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (20, N'https://ydyo.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 2, N'#haber > table > tbody > tr', N'#duyurutabnav > li:nth-child(2) > a', N'Yabanc?? Diller Haberler')
GO
INSERT [dbo].[AnnouncementDefinitions] ([PkId], [Url], [TypeId], [RowCssSelector], [ClickCssSelector], [Description]) VALUES (21, N'https://ydyo.gop.edu.tr/TumDuyurular.aspx?d=tr-TR&mk=30541&m=duyuru_tum', 3, N'#etkinlik > table > tbody > tr', N'#duyurutabnav > li:nth-child(3) > a', N'Yabanc?? Diller Etkinlikler')
GO
SET IDENTITY_INSERT [dbo].[AnnouncementDefinitions] OFF
GO
SET IDENTITY_INSERT [dbo].[Announcements] ON 
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (193, 1, N'20 Adet S??rekli ??????i Al??m?? S??zl?? S??nav Sonu??lar??', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8294', CAST(N'2020-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (194, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav?? Kay??t Hakk?? Kazanan Adaylar (4. Yedek Liste)', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/7fe577fd-e718-4856-b317-ca94342cc25c/url_icerik/4.%20yedek.pdf', CAST(N'2020-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (195, 1, N'Uluslararas?? ??niversite Sporlar?? G??n?? Etkinlikleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8284', CAST(N'2020-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (196, 1, N'????retim Eleman?? Kadrolar?? Giri?? S??nav?? Sonu??lar?? [17.09.2020]', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8280', CAST(N'2020-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (197, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav?? Kay??t Hakk?? Kazanan Adaylar (3. Yedek Liste)', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/b52e5c72-ce34-4874-9837-523352e3d54b/url_icerik/3.%20ilan.pdf', CAST(N'2020-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (198, 1, N'??SYM 2020- Yabanc?? Dil Bilgisi Seviye Tespit S??nav?? (2020- YDS-1) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8259', CAST(N'2020-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (199, 1, N'20 Adet S??rekli ??????i Al??m?? Noter Kura Sonu??lar?? ve S??zl?? S??nav Duyurusu', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8253', CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (200, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav?? Kay??t Hakk?? Kazanan Adaylar (2. Yedek Liste)', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/520e07d3-a3a9-4a35-a365-0fddb8847ca8/url_icerik/TOKAT%20GAZ%C4%B0OSMANPA%C5%9EA%20%C3%9CN%C4%B0VERS%C4%B0TES%C4%B0%20Spor%20Bilimleri%20Fak%C3%BCltesi%202020-2021%20%C3%96%C4%9Fretim%20Y%C4%B1l%C4%B1%20%C3%96zel%20Yetenek%20S%C4%B1nav%C4%B1%202.%20%20Yedek%20Listeden%20Kay%C4%B1t%20Hakk%C4%B1%20Kazanan%20Adaylar.pdf', CAST(N'2020-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (201, 1, N'2020-2021 G??z D??nemi E??itim Uygulamalar??na ili??kin Al??nan Karar', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8232', CAST(N'2020-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (202, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav?? Kay??t Hakk?? Kazanan Adaylar (1. Yedek Liste)', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/188c2af5-f871-4c63-acc4-00939ccf9ec1/url_icerik/1.%20YEDEK%20L%C4%B0STE.pdf', CAST(N'2020-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (203, 1, N'Turhal Uygulamal?? Bilimler Fak??ltesi Grafik Tasar??m?? B??l??m?? ??zel Yetenek S??nav?? Yedek Listeden Kesin Kay??t Hakk?? Kazananlar??n Listesi', N'https://turhalubf.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=8223', CAST(N'2020-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (204, 1, N'2020-2021 E??itim ????retim Y??l?? E??itim Fak??ltesi G??zel Sanatlar E??itimi B??l??m?? Resim-???? E??itimi Anabilim Dal?? ??zel Yetenek S??nav?? Sonu??lar??', N'https://egitim.gop.edu.tr/depo/menuler/birim_10996/duyurular_198/94a2558f-dec3-43ac-a43a-bc6ea3a1c0bf/url_icerik/YeniBelge%202020-09-09%2015.17.20.pdf', CAST(N'2020-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (205, 1, N'Devlet Konservatuvar?? 2020-2021 E??itim ????retim Y??l?? ??zel Yetenek S??nav?? Sonu??lar??', N'https://konservatuvar.gop.edu.tr/depo/menuler/birim_11216/duyurular_198/33f1f54a-07af-408a-ad0c-cff8b78004e7/url_icerik/sonu%C3%A7lar.pdf', CAST(N'2020-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (206, 1, N'2020-2021 E??itim ????retim Y??l?? E??itim Fak??ltesi G??zel Sanatlar E??itimi B??l??m?? M??zik ????retmenli??i Anabilim Dal?? ??zel Yetenek S??nav?? Sonu??lar??', N'https://egitim.gop.edu.tr/depo/menuler/birim_10996/duyurular_198/8a36be6b-75ea-4ead-814b-ac910a5b3583/url_icerik/YeniBelge%202020-09-08%2019.05.20.pdf', CAST(N'2020-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (207, 1, N'????retim Eleman?? Kadrolar?? ??n De??erlendirme Sonu??lar?? (07.09.2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/7bd9583c-fae3-4af7-901b-995da8e0eaaf/html_icerik/files/T%C3%9CM%20%C4%B0LAN.pdf', CAST(N'2020-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (208, 1, N'Turhal Uygulamal?? Bilimler Fak??ltesi Grafik Tasar??m?? B??l??m?? ??zel Yetenek S??nav Sonu??lar?? ve Kesin Kay??t Listesi', N'https://turhalubf.gop.edu.tr/depo/menuler/birim_11944/duyurular_198/4cf20b41-878b-4e5d-8423-b29b14dcb846/html_icerik/files/grafik%20tasar%C4%B1m%C4%B1%20s%C4%B1nav%20sonucu.pdf', CAST(N'2020-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (209, 1, N'2020-2021 E??itim-????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m ??lan?? (Tezli /Tezsiz Y??ksek Lisans-Doktora)', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/34f33a7e-45a4-4df5-8243-cde9924d4a41/url_icerik/ilan%20metni.pdf', CAST(N'2020-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (210, 1, N'S??rekli ??????i (4/D) Al??m?? Ba??vuru ve Kura Listeleri', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8154', CAST(N'2020-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (211, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav Sonu??lar??', N'https://sporbilim.gop.edu.tr/Default.aspx?d=tr-TR', CAST(N'2020-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (212, 1, N'Turhal Uygulamal?? Bilimler Fak??ltesi Grafik Tasar??m?? B??l??m?? 2020 Y??l?? ??zel Yetenek S??nav?? Aday Listesi', N'https://turhalubf.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=8136', CAST(N'2020-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (213, 1, N'Yatay Ge??i?? Ek Madde-1 Sonu?? Bilgilendirmesi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8127', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (214, 1, N'Rekt??r ??ahin''den 30 A??ustos Zafer Bayram?? Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8092', CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (215, 1, N'Yeni Kay??t Tarihleri G??ncellendi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8081', CAST(N'2020-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (216, 1, N'2020 Yeni Kay??t Duyurusu', N'https://ogr.gop.edu.tr/depo/menuler/birim_10307/duyurular_198/1866425c-ef86-4e17-ad91-4b301d4e9676/url_icerik/2020-2021%20Yeni%20Kay%C4%B1t%20%C4%B0lan%C4%B1-.pdf', CAST(N'2020-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (217, 1, N'Kamu Personel Se??me S??nav?? (????retmenlik Alan Bilgisi ve ??mam-Hatip Lisesi Meslek Dersleri ????retmenli??i Alan??) (2020 KPSS ??ABT) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8041', CAST(N'2020-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (218, 1, N'2020-2021 E??itim ????retim Y??l?? G??zel Sanatlar E??itimi B??l??m?? ??zel Yetenek S??nav Plan?? Ve S??nava Girecek Aday Listeleri', N'https://egitim.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=8036', CAST(N'2020-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (219, 1, N'S??rekli ??????i (4/D) Al??m ??lan?? (24-28 A??ustos 2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/9ef28cf2-2dc0-4a03-aa66-e4c1c31bd101/html_icerik/files/s%C3%BCreklii%C5%9F%C3%A7i_ilan2020_kamp%C3%BCs%20(3).pdf', CAST(N'2020-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (220, 1, N'2020-2021 E??itim-????retim Y??l?? G??z Yar??y??l?? Lisans??st?? E??itim Enstit??s?? 100/2000 Y??K Doktora Bursu ????renci Al??m ??lan??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8025', CAST(N'2020-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (221, 1, N'????retim ??yesi Al??m?? ??lan?? (18 A??ustos-01 Eyl??l 2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/146f62c5-5159-45b8-9590-4c87be41cc84/html_icerik/files/TOG%C3%9C%20%C3%96%C4%9Fretim%20%C3%9Cyesi%20%C4%B0lan%C4%B1%20-%20A%C4%9Fustos%202020.pdf', CAST(N'2020-08-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (222, 1, N'????retim Eleman?? Al??m ??lan?? (18 A??ustos - 01 Eyl??l 2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/6fb61a85-7493-4edc-91ec-ce0ea3218538/html_icerik/files/2020-%C4%B0lan%20Metni%20A%C4%9Fustos%20%C3%96%C4%9Fretim%20Eleman%C4%B1%20%C4%B0lan%C4%B1.pdf', CAST(N'2020-08-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (223, 1, N'2020-2021 G??z D??nemi Pedagojik Formasyon UZEM Ders Kay??t Duyurusu', N'https://egitim.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=8002', CAST(N'2020-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (224, 1, N'??SYM 2020- Kamu Personel Se??me S??nav?? (Genel Yetenek-Genel K??lt??r, E??itim Bilimleri) (2020-KPSS Lisans) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7983', CAST(N'2020-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (225, 1, N'Turhal Uygulamal?? Bilimler Fak??ltesi Grafik Tasar??m?? B??l??m?? 2020-2021 E??itim-????retim Y??l?? ??zel Yetenek S??nav?? Online Ba??vuru', N'https://turhalubf.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=7973', CAST(N'2020-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (226, 1, N'??niversitemiz E??itim Fak??ltesi 2020-2021 E??itim ????retim Y??l?? ??zel Yetenek S??nav?? Ba??vuru K??lavuzu', N'https://egitim.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=7970', CAST(N'2020-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (227, 1, N'Turhal Uygulamal?? Bilimler Fak??ltesi Grafik Tasar??m?? B??l??m?? 2020-2021 E??itim-????retim Y??l?? ??zel Yetenek S??nav??', N'https://turhalubf.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=7936', CAST(N'2020-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (228, 1, N'Devlet Konservatuvar?? 2020-2021 E??itim ????retim Y??l?? ??zel Yetenek S??nav??', N'https://konservatuvar.gop.edu.tr/depo/menuler/birim_11216/duyurular_198/8229d2d0-755f-4312-b9aa-9581171160c2/url_icerik/k%C4%B1lavuz%20son%20hali%202.pdf', CAST(N'2020-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (229, 1, N'??niversitemiz E??itim Fak??ltesi 2020-2021 E??itim ????retim Y??l?? ??zel Yetenek S??nav??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7919', CAST(N'2020-07-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (230, 1, N'2020-2021 E??itim- ????retim Y??l?? Pedagojik Formasyon G??z Yar??y??l?? Ders Kayd?? ve Har?? Duyurusu', N'https://egitim.gop.edu.tr/depo/menuler/birim_10996/duyurular_198/f33db7f5-9376-4430-98a4-54e269d77eec/url_icerik/DERS%20KAYIT%20VE%20HAR%C3%87%20DUYURUS.docx', CAST(N'2020-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (231, 1, N'??niversitemizin Spor Bilimleri Fak??ltesi 2020-2021 E??itim ????retim Y??l?? ??zel Yetenek S??nav??', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/060d32e7-0663-4b62-8b5f-061a10193c72/url_icerik/Spor%20Bilimleri%20Fak%C3%BCltesi%20%C3%96zel%20Yetenek%20S%C4%B1nav%20K%C4%B1lavuzu.pdf', CAST(N'2020-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (232, 1, N'2020-2021 G??z Yar??y??l?? Yatay Ge??i?? Ba??vurular??', N'https://ogr.gop.edu.tr/depo/menuler/birim_10307/yatay_gecis_185/html_icerik/files/2020-2021%20Yatay%20Ge%C3%A7i%C5%9F%20G%C3%BCz%20Ba%C5%9Fvurular%C4%B1.pdf', CAST(N'2020-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (233, 1, N'??SYM 2020- Akademik Personel ve Lisans??st?? E??itimi Giri?? S??nav?? (2020- ALES-1) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7866', CAST(N'2020-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (234, 1, N'???Staj Seferberli??i??? Program??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7825', CAST(N'2020-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (235, 1, N'??SYM 2020- Dikey Ge??i?? S??nav?? (2020- DGS) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7803', CAST(N'2020-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (236, 1, N'Online B??t??nleme S??nav?? Tarihleri ve Linkleri', N'https://uzemportal.gop.edu.tr/login/index.php', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (237, 1, N'K??sa S??reli Elektrik Kesintisi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7774', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (238, 1, N'Sa??l??k Bilimleri Enstit??s?? Tezsiz Y??ksek Lisans ??cretleri Duyurusu', N'https://sbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=7766', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (239, 1, N'2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m?? Sonu??lar??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7767', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (240, 1, N'Rekt??r ??ahin''den 15 Temmuz Demokrasi ve Milli Birlik G??n?? Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7762', CAST(N'2020-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (241, 1, N'Rekt??r ??ahin???den Ayasofya Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7718', CAST(N'2020-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (242, 1, N'2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? Bilim S??nav??na Gireceklerin Aday Listeleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7708', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (243, 1, N'2019-2020 E????T??M-????RET??M YILI SONUNDA AZAM?? S??REY?? DOLDURAN ????RENC??LER ??????N EK SINAV DUYURUSU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8273', CAST(N'2020-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (244, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z D??NEM?? DERS PROGRAMI YAYINLANMI??TIR', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8216', CAST(N'2020-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (245, 1, N'Y??KSEKOKULUMUZ ??LET??????M HATLARI HAKKINDA DUYURU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8211', CAST(N'2020-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (246, 1, N'TEK DERS SINAVINA G??REB??LECEK ????RENC??LER??M??Z', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8174', CAST(N'2020-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (247, 1, N'KAYIT S??LD??RME ????LEM?? HAKKINDA DUYURU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8162', CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (248, 1, N'2019-2020 BAHAR YARI YILI MEZUN??YET ????LEMLER??', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8040', CAST(N'2020-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (249, 1, N'TEK DERS SINAVI TAR??H?? G??NCELLEMES??', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8039', CAST(N'2020-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (250, 1, N'D??RT DERS SINAVI DUYURUSU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7679', CAST(N'2020-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (251, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav?? Kay??t Hakk?? Kazanan Adaylar (5. Yedek Liste)', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/88d74506-d655-4cb9-9f05-94bcf66e2dbd/url_icerik/5.%20yedek.pdf', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (252, 1, N'2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m Sonu??lar??', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/dc8ec57f-b695-4bd3-9875-a7763b8ee02c/url_icerik/20-21%20E%C4%9Fitim%20%C3%96%C4%9Fretim%20Y%C4%B1l%C4%B1%20G%C3%BCz%20%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20%C3%96%C4%9Frenci%20Al%C4%B1m%20Ba%C5%9Fvuru%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (253, 1, N'Devlet Konservatuvar?? 2020-2021 ??zel Yetenek S??nav?? Yedek Listeden Kay??t Yapt??rmaya Hak Kazanan Adaylar', N'https://konservatuvar.gop.edu.tr/depo/menuler/birim_11216/duyurular_198/14892113-a674-4b49-b4c1-396b61588e90/url_icerik/YEDEK%20L%C4%B0STE.pdf', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (254, 1, N'??niversitemizi Yeni Kazanan ????renciler ????in Uyum Bro????r??', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8298', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (255, 1, N'Staj Seferberli??i Duyurusu', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7810', CAST(N'2020-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (256, 1, N'Yeni Europass Yay??nda: "Avrupa???da ????renim ve Kariyer ????in Europass???la Tan????"', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7722', CAST(N'2020-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (257, 1, N'E-B??lten 1. Say??m??z Yay??nda', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7571', CAST(N'2020-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (258, 1, N'Hazine ve Maliye Bakanl?????? 1 Milyon ??stihdam Projesi', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7289', CAST(N'2020-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (259, 1, N'Yetenek Her Yerde Fuarlar?? Web''e Ta????nd??', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6992', CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (260, 1, N'Rekt??r??m??z Prof. Dr. B??nyamin ??AH??N Toguresmi ve Togukarmer Instagram Ortak Canl?? Yay??n??nda', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6940', CAST(N'2020-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (261, 1, N'Kariyer Geli??iminizi Evde Kalarak S??rd??rmek M??mk??n M???', N'https://karmer.gop.edu.tr/depo/menuler/birim_11898/duyurular_198/9a85b69f-c3b9-4369-9c29-65af24a84090/url_icerik/karmer%20bilgilendirme%20ant.pdf', CAST(N'2020-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (262, 1, N'Yetenek Her Yerde ??ptalleri Duyurusu', N'https://karmer.gop.edu.tr/depo/menuler/birim_11898/duyurular_198/b8a6b169-f652-4abb-979e-2a21f665799a/url_icerik/YETENEK%20HER%20YERDE%202020%20%C4%B0PTALLER%C4%B0%20HAKKINDA.pdf.pdf', CAST(N'2020-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (263, 1, N'"TOGU Career Research Journal" Yay??n Hayat??na Ba??lad??', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6774', CAST(N'2020-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (264, 1, N'I. Ulusal Sa??l??k Sekt??r??nde Kariyer Fuar??', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6638', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (265, 1, N'Kariyer S??yle??ileri - Yerel Y??netimler ve Tokat (Av. Ey??p ERO??LU)', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6637', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (266, 1, N'Sa??l??k Sekt??r??nde Kariyer E??itimi - Biz Olmak', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6636', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (267, 1, N'Proje, Destek, Te??vik ve Hibe Ekosistemi', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6635', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (268, 1, N'Kariyer S??yle??ileri - Hakan Sar??cano??lu (Tokat Seyahat)', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6634', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (269, 1, N'??zge??mi?? (CV) ??rnekleri', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6496', CAST(N'2020-02-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (270, 1, N'Ge??mi?? Olsun ELAZI??!', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6118', CAST(N'2020-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (271, 1, N'Kariyer S??yle??ileri Kapsam??nda 25.12.2019 G??n?? Erbaa SHMYO''day??z...', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5806', CAST(N'2019-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (272, 1, N'Kariyer S??yle??ileri - Hobiden Ba??ar??ya', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5661', CAST(N'2019-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (273, 1, N'Kariyer S??yle??ileri - Kariyerinize Sa??l??k', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5653', CAST(N'2019-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (274, 1, N'T.C. D????i??leri Bakanl?????? - Avrupa Birli??i Ba??kanl?????? Staj Ba??vurular?? Ba??lad??', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5491', CAST(N'2019-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (275, 1, N'Yaz D??nemi YDS-Y??KD??L Haz??rl??k E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7434', CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (276, 1, N'Corona G??nlerinde E??itim ve ??ocuk Zirvesi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6895', CAST(N'2020-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (277, 1, N'YDS-Y??KD??L Haz??rl??k E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6479', CAST(N'2020-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (278, 1, N'Bitki Koruma ??r??nleri Bayilik ve Toptanc??l??k S??nav?? Haz??rl??k Kursu', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6476', CAST(N'2020-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (279, 1, N'G??revde Y??kselme ve Unvan De??i??ikli??i Yaz??l?? S??nav?? Sorular??', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6427', CAST(N'2020-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (280, 1, N'Microsoft Yaz??l??m Geli??tirme Temelli Sertifika Program??; MTA (Microsoft Tecnology Associate) 98-361 Software Development Fundamentals', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6326', CAST(N'2020-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (281, 1, N'Do??al Boyac??l??k ve Bitkisel Pigmentler E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6319', CAST(N'2020-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (282, 1, N'Oyun Terapisi Uygulay??c?? E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6276', CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (283, 1, N'SPSS Uygulamal?? Temel Seviye ??statistiksel Veri Analizi Kursu', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6274', CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (284, 1, N'Dikey Ge??i?? S??nav?? Haz??rl??k E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6229', CAST(N'2020-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (285, 1, N'G??revde Y??kselme ve Unvan De??i??ikli??i Yaz??l?? S??nav Kat??l??m Listesi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6109', CAST(N'2020-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (286, 1, N'Y??KD??L-YDS Yogunla??t??r??lm???? Soru ????z??m E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6065', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (287, 1, N'Panel Veri Analizi E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6063', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (288, 1, N'Zaman Serileri Analizi E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6062', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (289, 1, N'7-12 Ya?? S??mestr Tatili Y??zme Program??', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6048', CAST(N'2020-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (290, 1, N'WISC-R Zeka Testi Uygulay??c?? Sertifika E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6038', CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (291, 1, N'Ukulele E??itmen E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6037', CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (292, 1, N'Resim Yorumlama ve Projektif Testler E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6036', CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (293, 1, N'G??revde Y??kselme ve Unvan De??i??ikli??i S??nav??', N'https://personel.gop.edu.tr/images/duyurular/20.Ara.2019.16.12.04.pdf', CAST(N'2019-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (294, 1, N'Yenilik??i E??itimciler Zirvesi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5499', CAST(N'2019-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (295, 1, N'Spor Psikolojisi Sertifika Program??', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5374', CAST(N'2019-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (296, 1, N'Kas??m Ay?? ??ocuk De??erlendirme Testleri Uygulay??c?? E??itimi', N'https://togusem.gop.edu.tr/depo/menuler/birim_11349/duyurular_198/763cea22-8de2-4092-a2e2-b98880953336/url_icerik/%C3%87ocuk%20De%C4%9Ferlendirme%20Testleri%20Uygulay%C4%B1c%C4%B1%20E%C4%9Fitimi.jpg', CAST(N'2019-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (297, 1, N'YDS-Y??KD??L Haz??rl??k E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5263', CAST(N'2019-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (298, 1, N'??ocuk De??erlendirme Testleri Uygulay??c?? E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5262', CAST(N'2019-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (299, 1, N'Akademik ??eviri E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5261', CAST(N'2019-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (300, 1, N'Springer Nature???da Akademik Kitap Yay??nlamak: Yeni eKitap Trendlerine Bak??????? konulu Webinar', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8325', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (301, 1, N'T??rkiye At??f Dizini Kullan??c?? E??itim Toplant??s??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8291', CAST(N'2020-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (302, 1, N'Infobase Veritaban?? Deneme Eri??imi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8281', CAST(N'2020-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (303, 1, N'T??rkiye At??f Dizini veritaban?? hakk??nda online kullan??c?? e??itim toplant??s??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8252', CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (304, 1, N'ProQuest Dissertations and Thesis Egitimi Duyurusu', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8249', CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (305, 1, N'ProQuest Eyl??l Ay?? E??itim Seminerleri Duyurusu', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8195', CAST(N'2020-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (306, 1, N'ClinicalKey ve Uptodate Kullan??c?? E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8194', CAST(N'2020-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (307, 1, N'T??rkiye At??f Dizini Kullan??c?? E??itim Toplant??s??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8177', CAST(N'2020-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (308, 1, N'iThenticate Kullan??m Kotas??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8072', CAST(N'2020-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (309, 1, N'ProQuest Yazar ??al????tay??:Tez ve Dergi Makaleleri Yazma ??pu??lar?? Duyuru Materyalleri', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8038', CAST(N'2020-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (310, 1, N'ProQuest Ebook Central Online Egitim', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7981', CAST(N'2020-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (311, 1, N'T??rkiye At??f Dizini Online Kullan??c?? E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7746', CAST(N'2020-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (312, 1, N'??al????ma Saatlerimiz...', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7744', CAST(N'2020-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (313, 1, N'T??rkiye At??f Dizini Kullan??c?? E??itim Toplant??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7568', CAST(N'2020-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (314, 1, N'Complete Anatomy Online E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7538', CAST(N'2020-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (315, 1, N'Elsevier ClinicalKey ve UpToDate E??itim Toplant??s??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7269', CAST(N'2020-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (316, 1, N'Mezun Olacak ????rencilerimizin Dikkatine', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7235', CAST(N'2020-05-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (317, 1, N'Gale Reference Complete Kullan??c?? E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7218', CAST(N'2020-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (318, 1, N'Elsevier ???ClinicalKey Student Foundation??? E-Kitap Online Kullan??c?? E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7048', CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (319, 1, N'ClinicalKey ve UpToDate Online E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6999', CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (320, 1, N'Web of Science - Journal Citation Reports - InCites - Publons Online E??itim', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6998', CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (321, 1, N'Ebook Central Online E??itim', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6997', CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (322, 1, N'Covis''19 Nedeni ??le Sobiad At??f Dizinine Uzaktan Eri??im Kolayl??????', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6959', CAST(N'2020-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (323, 1, N'ProQuest Central Online E??itim', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6937', CAST(N'2020-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (324, 1, N'Web of Science Core Collection Kullan??c?? E??itimi (T??rk??e)', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6936', CAST(N'2020-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (325, 1, N'ClinicalKey Student Foundation Online Kullan??c?? E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6928', CAST(N'2020-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (326, 1, N'Kamp??s D?????? Eri??im Hakk??nda', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6927', CAST(N'2020-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (327, 1, N'Covid''19 Sebebi ??le ClinicalKey ve UpToDate Online Kullan??c?? E??itimi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6926', CAST(N'2020-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (328, 1, N'ProQuest Arama Motoru Kullan??m K??lavuzu', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6883', CAST(N'2020-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (329, 1, N'Covid''19 Taramas?? Ke??if Ara??lar??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6814', CAST(N'2020-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (330, 1, N'Covid''19 Kapsam??nda ??cretsiz Eri??im Sa??layabilece??iniz Makale ve Kitap Linklerimiz', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6803', CAST(N'2020-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (331, 1, N'Covid''19 Kapsam??nda Al??nacak Tedbirleri Gere??i', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6709', CAST(N'2020-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (332, 1, N'OKULLARIN TAT??L ED??LMES?? VE ??ADE ED??LECEK K??TAPLARINIZ HAKKINDA', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6678', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (333, 1, N'Turnitin Kullan??c??lar??n??n Dikkatine!', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6551', CAST(N'2020-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (334, 1, N'iThenticate Hakk??nda ??nemli Duyuru', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6548', CAST(N'2020-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (335, 1, N'ULUSAL A??IK ER??????M ARAMA MOTORU', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6544', CAST(N'2020-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (336, 1, N'Nas??l Randevu Alabilirim', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7814', CAST(N'2020-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (337, 1, N'Online Seminer Ba??vurusu', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7283', CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (338, 1, N'TOG?? 2020 ??HA Yar????ma ??ampiyonu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8338', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (339, 1, N'Tar??mda ????birli??i Protokol?? ??mzaland??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8293', CAST(N'2020-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (340, 1, N'S??rekli ??????i Al??m?? Kura ??ekili??i Yap??ld??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8248', CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (341, 1, N'Devlet Konservatuvar??m??zdan Video Kay??t Y??ntemi ??le Yetenek S??nav??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8219', CAST(N'2020-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (342, 1, N'Rekt??r??m??zden MEB Bakan Yard??mc??s?? Prof. Dr. Mahmut ??zer???e Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8170', CAST(N'2020-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (343, 1, N'TOG??''n??n ??stikrarl?? Ba??ar??s?? Devam Ediyor', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8164', CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (344, 1, N'Rekt??r??m??zden TOBB Ba??kan?? Rifat Hisarc??kl??o??lu???na Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8163', CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (345, 1, N'Tokat Cumhuriyet Ba??savc??s?? Fatih ??oban???dan Rekt??r??m??ze Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8129', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (346, 1, N'??niversitemiz ve Tokat Gen??lik ve Spor ??l M??d??rl?????? Aras??nda Protokol ??mzaland??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8128', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (347, 1, N'Rekt??r??m??zden Ondokuz May??s ??niversitesi Rekt??r?? Prof. Dr. Yavuz ??nal???a Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8090', CAST(N'2020-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (348, 1, N'??niversitemiz Doluluk Oranlar??nda Rekor', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8071', CAST(N'2020-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (349, 1, N'??niversitemiz Engelsiz ??niversite ??d??lleri 2020???ye Aday Oldu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8058', CAST(N'2020-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (350, 1, N'Rekt??r??m??z Tokat Cumhuriyet Ba??savc??s?? Fatih ??oban????? Ziyaret Etti', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8056', CAST(N'2020-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (351, 1, N'Rekt??r??m??ze Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8029', CAST(N'2020-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (352, 1, N'Rekt??r??m??z Prof. Dr. B??nyamin ??ahin NTV Do??ru Tercih Program??na Konuk Oldu- ??kinci B??l??m', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7982', CAST(N'2020-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (353, 1, N'Rekt??r??m??z CNN T??rk Ekranlar??nda Tercih Zaman?? Program??n??n Konu??u Oldu - ??kinci B??l??m', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7946', CAST(N'2020-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (354, 1, N'Rekt??r??m??z CNN T??rk Tercih Zaman?? Program??na Konuk Oldu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7879', CAST(N'2020-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (355, 1, N'T??p Fak??ltemizde G??rev De??i??imi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7868', CAST(N'2020-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (356, 1, N'Rekt??r??m??z NTV Do??ru Tercih Program??na Konuk Oldu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7867', CAST(N'2020-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (357, 1, N'Rekt??r??m??z Akit TV E??itim Atlas?? Program??na Konuk Oldu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7865', CAST(N'2020-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (358, 1, N'Tokat Gaziosmanpa??a ??niversitesi Mesleki ve Teknik Anadolu Lisesi Tan??t??m Toplant??s??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7855', CAST(N'2020-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (359, 1, N'Turhal Uygulamal?? Bilimler Fak??ltemizde Dekanl??k Devir Teslimi Ger??ekle??ti', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7827', CAST(N'2020-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (360, 1, N'Enstit??lerimizde Devir Teslim Ger??ekle??ti', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7806', CAST(N'2020-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (361, 1, N'Panel: Darbecilik Vir??s?? ve 15 Temmuz Destan??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7804', CAST(N'2020-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (362, 1, N'??niversitemizde 15 Temmuz Demokrasi ve Milli Birlik G??n?? Etkinlikleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7796', CAST(N'2020-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (363, 1, N'Rekt??r ??ahin ??niversiteli Gen??lerle Bir Araya Geldi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7784', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (364, 1, N'??ehitlik ve Kahramanl??k T??rk??leri Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7770', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (365, 1, N'Resim ve Heykel Sergisi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7764', CAST(N'2020-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (366, 1, N'KOSGEB Destekleri Tan??t??m Etkinli??i', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7698', CAST(N'2020-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (367, 1, N'Tokat Cumhuriyet Ba??savc??m??zdan Rekt??r ??ahin???e Veda Ziyareti', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7613', CAST(N'2020-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (368, 1, N'Tokat Meslek Y??ksekokulumuzda G??rev De??i??imi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7583', CAST(N'2020-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (369, 1, N'Rekt??r ??ahin, ???Benim Tercihim??? Program??na Konuk Oldu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7578', CAST(N'2020-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (370, 1, N'Bu Ses TOG?? T??MER ??ark?? Yar????mas?? ??d??l T??reni', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7522', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (371, 1, N'??niversitemiz ve ????KUR aras??nda Protokol ??mzaland??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7514', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (372, 1, N'T??pl?? Asma Fidan?? Da????t??m T??reni', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7509', CAST(N'2020-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (373, 1, N'Yabanc??lara T??rk??enin Uzaktan ????retimi Sertifika Program??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7502', CAST(N'2020-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (374, 1, N'??niversitemizin Tan??t??m?? ????in Web Sitesi Haz??rland??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7476', CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (375, 1, N'T??rk D??nyas?? ve Kerk??k S??yle??isi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7427', CAST(N'2020-06-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (376, 1, N'4/D S??rekli ??????i Al??m?? Kura ??ekili??i Yap??ld??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7424', CAST(N'2020-06-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (377, 1, N'Kurulu??unun 102. Y??l??nda Azerbaycan ve T??rk D??nyas?? S??yle??isi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7384', CAST(N'2020-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (378, 1, N'Bu Ses TOG?? T??MER Ses Yar????mas?? Sonu??land??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7383', CAST(N'2020-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (379, 1, N'TOG??KARMER, TSO ve ESSA Dan????manl??k Ltd. ??ti. Firmas?? Aras??nda D??zenlenen ??????????te Kariyeriniz Projesi??? Protokol?? ??mzaland??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7381', CAST(N'2020-06-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (380, 1, N'Bu Ses TOG?? T??MER ??ark?? Yar????mas??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7354', CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (381, 1, N'"T??MER ????rencilerimizden 19 May??s Atat??rk????? Anma, Gen??lik ve Spor Bayram?? Kutlamas??"', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7227', CAST(N'2020-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (382, 1, N'D??MES A.??. Genel M??d??r?? Ozan Diren Canl?? Yay??n ile ????rencilerimizle Bulu??tu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7219', CAST(N'2020-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (383, 1, N'Erbaa Meslek Y??ksekokulumuzda ???Video Kay??t ve Canl?? Ders Odas????? Olu??turuldu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7163', CAST(N'2020-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (384, 1, N'Devlet Konservatuvar??m??zdan ???Evde Kal??? Klibi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7152', CAST(N'2020-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (385, 1, N'2019-2020 E??itim ????retim Y??l?? Bahar Yar??y??l?? Uzaktan E??itim S??reci', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7016', CAST(N'2020-04-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (386, 1, N'Belediye Ba??kan??m??z ve Rekt??r??m??z Canl?? Yay??nla ????rencilerimizle Bulu??tular', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6994', CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (387, 1, N'Rekt??r ??ahin Canl?? Yay??nda ????rencilerin Sorular??n?? Yan??tlad??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6968', CAST(N'2020-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (388, 1, N'5. Uluslararas?? Anadolu Tar??m, G??da, ??evre ve Biyoloji Kongresi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8306', CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (389, 1, N'1. Uygulamal?? ??statistik Kongresi (Online)', N'https://www.gop.edu.tr/depo/menuler/birim_32/etkinlikler_197/9a8974cb-8607-425b-819a-6c3794869040/url_icerik/afi%C5%9F1.jpg', CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (390, 1, N'Fen Bilimleri ????in Fikri ve S??nai M??lkiyet Haklar?? E??itimi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7813', CAST(N'2020-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (391, 1, N'KOSGEB Destekleri Tan??t??m Etkinli??i', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7672', CAST(N'2020-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (392, 1, N'Bu Ses TOG?? T??MER ??ark?? Yar????mas?? ??d??l T??reni', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7508', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (393, 1, N'T??pl?? Asma Fidan?? Da????t??m T??reni', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7492', CAST(N'2020-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (394, 1, N'G??n??m??z "CORONA" Vir??s?? ve Korunma Yollar??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6640', CAST(N'2020-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (395, 1, N'PANEL: Uyu??turucu ve Madde Ba????ml??l??????', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6626', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (396, 1, N'14 Mart T??p Bayram??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6610', CAST(N'2020-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (397, 1, N'KONFERANS: Kainat??n Dili Matematik', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6609', CAST(N'2020-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (398, 1, N'Panel: T??rkiye''de Kad??n Olmak', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6595', CAST(N'2020-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (399, 1, N'Kariyer E??itimleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6514', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (400, 1, N'Kariyer S??yle??ileri: Hakan Sar??cano??lu (Tokat Seyahat A.??. Genel M??d??r??)', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6513', CAST(N'2020-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (401, 1, N'Kariyer S??yle??ileri: Mobil Teknoloji Sekt??r??nde Kad??n Giri??imci Olmak', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6512', CAST(N'2020-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (402, 1, N'Kariyer S??yle??ileri: Tar??mda Kad??n??n G??c??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6511', CAST(N'2020-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (403, 1, N'??leti??im Ustal?????? Zirvesi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6489', CAST(N'2020-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (404, 1, N'T??rk D??nyas?? ve Azerbaycan''??n T??rkiye''deki Mega Yat??r??mlar??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6481', CAST(N'2020-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (405, 1, N'AKADEM??K KONSER', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6404', CAST(N'2020-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (406, 1, N'KONFERANS "28. Y??l??nda Hocal?? ??ehitleri"', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6400', CAST(N'2020-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (407, 1, N'PANEL "T??rkiye''nin Yeni D???? Politikas??"', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6399', CAST(N'2020-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (408, 1, N'Konser: Ud - Piyano ??le Bulu??malar', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6224', CAST(N'2020-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (409, 1, N'Konferans: Aileyi Besleyen Nebevi De??erler', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6146', CAST(N'2020-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (410, 1, N'IICT-2020 International Conference On INCLUSIVE INFORMATION & COMMUNICATIONS TECHNOLOGY', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6071', CAST(N'2020-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (411, 1, N'S??yle??i', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5905', CAST(N'2020-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (412, 1, N'Tar??m??n ????retimin 174. Y??l??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5898', CAST(N'2020-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (413, 1, N'S??nav Stresi ve Ba?? Etme Y??ntemleri - KPSS S??reci', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5828', CAST(N'2019-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (414, 1, N'Konferans- Oyun Bozan T??rkiye''den Oyun Kuran T??rkiye''ye', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5813', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (415, 1, N'Konferans- Ailede ??fke Kontrol??n??n P??f Noktalar??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5751', CAST(N'2019-12-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (416, 1, N'8. Geleneksel Fen Bilimleri Proje Sergisi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5750', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (417, 1, N'TOG?? 2. AR-GE Proje Pazar??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5740', CAST(N'2020-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (418, 1, N'Koro Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5725', CAST(N'2019-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (419, 1, N'Koro Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5719', CAST(N'2019-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (420, 1, N'Mehmet Akif Ersoy''u Ni??in Unutmuyoruz?', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5665', CAST(N'2019-12-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (421, 1, N'Panel- Sa??l??kta Adli Uygulamalar ve Yasal Sorumluluklar', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5645', CAST(N'2019-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (422, 1, N'Kariyer S??yle??ileri-Kariyerinize Sa??l??k', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5627', CAST(N'2019-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (423, 1, N'Kariyer S??yle??ileri-Hobiden Ba??ar??ya', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5626', CAST(N'2019-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (424, 1, N'G??l-Efza Tasavvuf Musikisi Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5563', CAST(N'2019-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (425, 1, N'Ali Ufki Bey ve Sultan Bestekarlar Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5553', CAST(N'2019-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (426, 1, N'??al????tay - Hayat??n Temsili Olarak Edebiyat "G??n??m??z T??rk Hikayesinde M??lteciler"', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5502', CAST(N'2019-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (427, 1, N'1. Tokat Di?? Hekimli??i Ulusal Sempozyumu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5495', CAST(N'2019-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (428, 1, N'Kariyer S??yle??ileri - Spor ve Performans Psikolojisi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5475', CAST(N'2019-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (429, 1, N'Osmanl??''dan G??n??m??ze Ar??ivler', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5463', CAST(N'2019-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (430, 1, N'24 Kas??m ????retmenler G??n?? Paneli', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5459', CAST(N'2019-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (431, 1, N'Ailede Huzur ve Kad??n - Hz. Hatice ve Hz. Fatma', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5454', CAST(N'2019-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (432, 1, N'??ampiyonluklara Giden Yolda Yap??lan M??cadelede ??rnek Sporcu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2748', CAST(N'2019-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (433, 1, N'T??rk Halk M??zi??i Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2014', CAST(N'2018-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (434, 1, N'Sergi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1947', CAST(N'2018-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (435, 1, N'S??yle??i Nazl?? ??elik', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=307', CAST(N'2018-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (436, 1, N'????retmen, Kendilik ve ??nsan Felsefesi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=306', CAST(N'2018-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (437, 1, N'T??rkiye''de ve D??nyada Uzay Teknolojileri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=303', CAST(N'2018-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (438, 1, N'MEVLANA VE PROJE TABANLI ULUSLARARASI DE????????M PROGRAMLARI HAKKINDA ??NEML?? DUYURU', N'https://mevlana.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6853', CAST(N'2020-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (439, 1, N'Mevlana Yabanc?? Dil S??nav?? ??ptali', N'https://mevlana.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6684', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (440, 1, N'2020-2021 E??itim-????retim Y??l?? Proje Tabanl?? Uluslararas?? De??i??im Program?? Ba??vurular??', N'https://mevlana.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6624', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (441, 1, N'2020-2021 AKADEM??K YILI MEVLANA DE????????M PROGRAMI BA??VURULARI', N'https://mevlana.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6359', CAST(N'2020-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (442, 1, N'MEVLANA PROGRAMI SONU??LARI', N'https://mevlana.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=4839', CAST(N'2019-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (443, 1, N'2020 ??? 2021 AKADEM??K YILI FARAB?? DE????????M PROGRAMI BA??VURULARI BA??LAMI??TIR', N'https://farabi.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6497', CAST(N'2020-02-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (444, 1, N'Farabi Burslar??', N'https://farabi.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5341', CAST(N'2019-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (445, 1, N'Farabi Burslar?? ile ??lgili Bilgilendirme', N'https://farabi.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5224', CAST(N'2019-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (446, 1, N'SGK Tescil ve Hizmet D??k??m?? Belgesi', N'https://farabi.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5125', CAST(N'2019-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (447, 1, N'????renci Belgesi G??nderilmesi', N'https://farabi.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=4658', CAST(N'2019-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (448, 1, N'Doktora Yeterlik S??nav??-Vahap TA??TAN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7695', CAST(N'2020-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (449, 1, N'Doktora Yeterlik S??nav??-Serap BOLAYIR', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7694', CAST(N'2020-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (450, 1, N'Tez Savunmas?? ??? Mertcan KAYA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7693', CAST(N'2020-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (451, 1, N'Doktora Yeterlik S??nav??-S??leyman S??N??N', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7692', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (452, 1, N'Doktora Yeterlik S??nav??-Mustafa I??IK', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7691', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (453, 1, N'Tez Savunmas?? ??? Hatice T??K', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7530', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (454, 1, N'Tez Savunmas?? ??? Akanda DO??AN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7529', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (455, 1, N'Doktora Tez Savunma S??nav??-??smail AL??C??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7491', CAST(N'2020-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (456, 1, N'Tez Savunmas?? ??? Cihat ??ZC??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7490', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (457, 1, N'Tez Savunmas?? ??? Neda YALAP', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7488', CAST(N'2020-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (458, 1, N'Tez Savunmas?? ??? Fadime ALTINER', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7487', CAST(N'2020-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (459, 1, N'Doktora Tez Savunma S??nav??-Selim ??AKAR', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7399', CAST(N'2020-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (460, 1, N'Doktora Tez Savunma S??nav??-Meltem U??GUNO??LU ERARSLAN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7398', CAST(N'2020-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (461, 1, N'Tez Savunmas?? ??? ??brahim Halil ??ENO??LU', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7360', CAST(N'2020-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (462, 1, N'Tez Savunmas?? ??? H??seyin CEVAH??R', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7359', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (463, 1, N'Tez Savunmas?? ??? Ay??enur DESTEBA??I', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7128', CAST(N'2020-06-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (464, 1, N'Tez Savunmas?? - Funda Keklik Kal', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6938', CAST(N'2020-04-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (465, 1, N'Tez Savunmas??-Bekir S??tk?? KARAZEH??R', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6796', CAST(N'2020-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (466, 1, N'Doktora Tez Savunma S??nav??-Ahmet ACAR', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6598', CAST(N'2020-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (467, 1, N'Doktora Tez Savunma S??nav??-Yasin D??NDER', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6482', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (468, 1, N'Tez Savunmas??-Nurg??l DOKUYAN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6115', CAST(N'2020-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (469, 1, N'Tez Savunmas??-Nazik ZENG??N', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6114', CAST(N'2020-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (470, 1, N'Tez Savunmas??-Afife Arzu AKBA??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6095', CAST(N'2020-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (471, 1, N'Tez Savunmas??- Nazl?? Sedef ??ZSOY', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6053', CAST(N'2020-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (472, 1, N'Tez Savunmas??-Murat ??ET??N', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5989', CAST(N'2020-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (473, 1, N'Tez Savunmas??-Nil??fer Ceren AYDIN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5988', CAST(N'2020-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (474, 1, N'Tez Savunmas??-B????ra KIRCAER', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5987', CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (475, 1, N'Doktora Yeterlik S??nav??-Saadet G??REL', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5986', CAST(N'2020-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (476, 1, N'Tez Savunmas??-Havva ??NC??R', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5948', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (477, 1, N'Doktora Tez Savunma S??nav??-Emrah ??AH??N', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5947', CAST(N'2020-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (478, 1, N'Doktora Tez Savunma S??nav??-Selim G??NG??R', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5946', CAST(N'2020-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (479, 1, N'Tez Savunmas??-??brahim Halil ??ENO??LU', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5945', CAST(N'2020-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (480, 1, N'Tez Savunmas??-Muhammed Veysel YILDIRIM', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5944', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (481, 1, N'Tez Savunmas??-Nazl?? Sedef ??ZSOY', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5855', CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (482, 1, N'Doktora Tez Savunma S??nav??-??znur DO??AN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5764', CAST(N'2020-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (483, 1, N'Doktora Tez Savunma S??nav??-Oktay ??ZKAN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5763', CAST(N'2020-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (484, 1, N'Doktora Yeterlik S??nav??-??ule Sema ALKO??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5762', CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (485, 1, N'Doktora Yeterlik S??nav??-??a??da?? YILDIZ', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5700', CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (486, 1, N'Doktora Yeterlik S??nav??-Mehmet Erdo??an BA??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5699', CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (487, 1, N'Doktora Tez Savunma S??nav??-Recep ??AKAR', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5683', CAST(N'2020-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (488, 1, N'Doktora Yeterlik S??nav??-Meral KAYABA??I', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5682', CAST(N'2019-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (489, 1, N'Doktora Yeterlik S??nav??-Menek??e YILDIZ USLU', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5681', CAST(N'2019-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (490, 1, N'Doktora Yeterlik S??nav??-Erdem KANI??LI', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5680', CAST(N'2019-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (491, 1, N'Doktora Yeterlik S??nav??-Bilgehan ??AKMAK SEL', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5679', CAST(N'2019-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (492, 1, N'Doktora Yeterlik S??nav??-Seda ERDO??AN', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5678', CAST(N'2019-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (493, 1, N'Doktora Yeterlik S??nav??-Berrak TEKG??N', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5677', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (494, 1, N'Doktora Yeterlik S??nav??-Serap ORU??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5676', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (495, 1, N'Doktora Yeterlik S??nav??-Nalan KANGAL', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5675', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (496, 1, N'Doktora Yeterlik S??nav??-Yavuz ??ZKAYA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5674', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (497, 1, N'Doktora Yeterlik S??nav??-Serap BOLAYIR', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5673', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (498, 1, N'DR.Selim G??NG??R ''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6086', CAST(N'2020-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (499, 1, N'DR.Recep ??AKAR ''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6085', CAST(N'2020-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (500, 1, N'DR.Oktay ??ZKAN ''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6084', CAST(N'2020-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (501, 1, N'ENST??T??M??ZE BA??LI ANAB??L??M DALLARINDAK?? ????RET??M ??YELER??M??Z??N ??NVAN DE????????KL??KLER??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6075', CAST(N'2020-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (502, 1, N'ENST??T??M??ZDE 14.11.2019 TAR??HL?? "ENST??T?? KURULU TOPLANTISI" GER??EKLE??T??R??LD??.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5447', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (503, 1, N'ENST??T??M??ZE BA??LI ANAB??L??M DALLARINDAK?? ????RET??M ??YELER??M??Z??N ??NVAN DE????????KL??KLER??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5147', CAST(N'2019-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (504, 1, N'DR.Bet??l KARCI ''y?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5146', CAST(N'2019-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (505, 1, N'DR.Selim ??AM''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4456', CAST(N'2019-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (506, 1, N'DR.Bekir KORKAT''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4383', CAST(N'2019-08-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (507, 1, N'DR.Engin ARAS''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4169', CAST(N'2019-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (508, 1, N'DR.Osman YALAP''?? Sosyal Bilimler Enstit??s?? ad??na tebrik ediyoruz.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4168', CAST(N'2019-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (509, 1, N'Enstit??m??z Tarih Anabilim Dal?? Doktora program??nda dan????manl??????n?? ????retim ??yelerimizden Do??.Dr. P??nar ??LGEN??? in y??r??tt?????? ????rencimiz Murat ??AYLI T??B??TAK yurt d?????? bursu kazanm????t??r.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3897', CAST(N'2019-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (510, 1, N'Enstit??m??z Tarih Anabilim Dal?? Doktora program??nda dan????manl??????n?? ????retim ??yelerimizden Prof.Dr. Song??l ??OLAK??? ??n y??r??tt?????? ????rencimiz Metin AYDAR T??B??TAK yurt d?????? bursu kazanm????t??r.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3895', CAST(N'2019-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (511, 1, N'2020-2021 G??Z D??NEM?? L??SANS??ST?? YEDEK L??STEDEN KAYIT YAPTIRMA HAKKINDA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7817', CAST(N'2020-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (512, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z D??NEM?? L??SANS??ST?? ????RENC?? ALIM SONU??LARI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/ffcd4c64-0aca-47d9-9a43-3d5133757ffd/url_icerik/2020-2021%20G%C3%BCz%20D%C3%B6nemi%20Lisans%C3%BCst%C3%BC%20De%C4%9Ferlendirme%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (513, 1, N'2020-2021 G??Z D??NEM?? L??SANS??ST?? ????RENC?? ALIMI ??N DE??ERLEND??RME SONU??LARI', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7710', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (514, 1, N'2019-2020 Bahar Yar??y??l?? B??t??nleme S??nav Programlar??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7594', CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (515, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z D??NEM?? L??SANS??ST?? ????RENC?? KONTENJANLARI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/3c70bc70-c3cb-47bf-a6c1-d7aad5ed580a/url_icerik/24.06.2020%20(SOSYAL%20B%C4%B0L%C4%B0MLER%20ENST%C4%B0TS%C3%9C)%202020-2021%20g%C3%BCz%20%20%C3%B6%C4%9Frenci%20al%C4%B1m%20kontenjanlar%C4%B1%20(1).pdf', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (516, 1, N'2019-2020 Bahar Yar??y??l?? Final Programlar??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7435', CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (517, 1, N'SEM??NER MUAF??YETLER?? HK.', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/48fcd67c-df9b-4437-a481-b0a85ed5e92d/url_icerik/SEM%C4%B0NER%20MUAF%C4%B0YET%20TABLOSU.pdf', CAST(N'2020-05-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (518, 1, N'COV??D-19 NEDEN??YLE 2019-2020 BAHAR YARIYILI KAYIT DONDURAN ????RENC??LER', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7194', CAST(N'2020-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (519, 1, N'Tez Savunma S??navlar?? Son Tarihi Hakk??nda Duyuru', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7193', CAST(N'2020-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (520, 1, N'??niversitemiz Senatosunun 22.04.2020 Tarihinde Aras??nav S??reci ile ??lgili Alm???? Oldu??u Kararlar', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/4786304f-2c0f-48f9-9019-df993c5824df/url_icerik/TOGU-Senato-Karar%C4%B1.pdf', CAST(N'2020-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (521, 1, N'2019-2020 BAHAR YARIYILI V??ZE SINAV TAKV??MLER??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7064', CAST(N'2020-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (522, 1, N'COV??D-19 Kapsam??nda Kay??t Dondurma S??reci', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6922', CAST(N'2020-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (523, 1, N'Enstit??m??zdeki Tez Savunma S??navlar?? Online olarak ger??ekle??tirilmektedir.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6879', CAST(N'2020-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (524, 1, N'2019-2020 Bahar D??nemi Y??K Kay??t Dondurma Duyurusu', N'https://ogr.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6847', CAST(N'2020-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (525, 1, N'Alan Semineri, Tez Savunmas?? ve Yeterlik S??navlar??n??n Dijital Ortamda Yap??lmas?? Hk.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6875', CAST(N'2020-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (526, 1, N'ULUSLARARASI L??SANS??ST?? ????RENC??LER ??????N AMER??KAN DOLARI HESABI', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6312', CAST(N'2020-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (527, 1, N'2019-2020 BAHAR YARIYILI DERS KAYIT ????LEMLER??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6205', CAST(N'2020-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (528, 1, N'2019-2020 Bahar D??nemi Ders Kay??tlar?? ??nternet ??zerinden 3-7 ??ubat 2020 tarihleri aras??nda yap??lacakt??r.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6162', CAST(N'2020-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (529, 1, N'2019-2020 Bahar D??nemi Yatay Ge??i?? Ba??vuru Sonu??lar??', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/cb0358c7-da47-4a15-bea5-28f85e2beffc/url_icerik/bahar%20yatay.PDF', CAST(N'2020-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (530, 1, N'????letme Anabilim Dal?? Sa??l??k Y??netimi Uzaktan ????retim Tezsiz Y??ksek Lisans Program?? Hk.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6099', CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (531, 1, N'2019-2020 E??itim-????retim Y??l?? Bahar Yar??y??l?? Yedek Listeden Kay??t Yapt??rmaya Hak Kazananlar', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/40e73597-fc1e-4f2c-8f3e-494e9fc28757/url_icerik/17.01.2020%20%20%20yedek%20liste.pdf', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (532, 1, N'UZAKTAN ????RET??M TEZS??Z Y??KSEK L??SANS ????REN??M ??CRETLER?? HAKKINDA', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/94442ceb-4976-451f-917e-0cffc393690d/url_icerik/tezsiz.pdf', CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (533, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI TEZL??/TEZS??Z Y??KSEK L??SANS VE DOKTORA SONU??LARI A??IKLANDI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/9aab6f69-cc85-49ae-9d6d-fbb9b9ea04cc/url_icerik/13.01.2020%20%20%20ens_hesaplama_sonuclari.pdf', CAST(N'2020-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (534, 1, N'????LETME SA??LIK Y??NET??M?? UZAKTAN ????RET??M TEZS??Z Y??KSEK L??SANS ????REN??M ??CRET?? HAKKINDA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5960', CAST(N'2020-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (535, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI Y??KSEK L??SANS-DOKTORA ??N DE??ERLEND??RME SONU??LARI VE SINAV YERLER??/SAATLER??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5925', CAST(N'2020-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (536, 1, N'Lisans??st?? ????renci Adaylar??n??n Online Ba??vurusunda Dikkat Edilecek hususlar', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/34935541-f938-4d10-ab54-ea6876847a9a/url_icerik/sosbil.pdf', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (537, 1, N'2019-2020 E??itim ????retim Y??l?? Bahar Yar??y??l?? Lisans??st?? ????renci Al??m?? ??lan??', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/85772f1f-6bd6-4219-aae4-066a72501ba3/url_icerik/Sosyal%20Bilimler%20Enstit%C3%BCs%C3%BC%202019-2020%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20Al%C4%B1m%20%C4%B0lan%C4%B1.pdf', CAST(N'2019-12-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (538, 1, N'2019-2020 G??Z D??NEM?? L??SANS??ST?? DERS PROGRAMLARI', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4983', CAST(N'2019-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (539, 1, N'ENST??T??M??Z ????RENC?? K??ML??K KARTLARI ??IKMI??TIR.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4943', CAST(N'2019-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (540, 1, N'"Tokat 3. Kitap G??nleri" kapsam??nda ????renciler i??in servis arac?? tahsis edilmi??tir.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4906', CAST(N'2019-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (541, 1, N'Kamp??s d??????ndan gelen ????retim Elemanlar?? i??in Enstit??m??zde derslik tahsis edilmi??tir', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4833', CAST(N'2019-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (542, 1, N'2019-2020 G??Z YARIYILI ??ZEL ????RENC?? BA??VURU SONU??LARI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/a7d24c26-a9c2-4206-b64a-f29b44055107/url_icerik/2019-2020%20G%C3%9CZ%20%C3%96ZEL%20%C3%96%C4%9ERENC%C4%B0%20SONU%C3%87LAR.pdf', CAST(N'2019-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (543, 1, N'2019-2020 G??Z YARIYILI ??ZEL ????RENC?? ??LANI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/e2d81ab1-a90f-451d-b7ed-ffe1e4f8f84b/url_icerik/2019-2020%20G%C3%9CZ%20(%C3%96ZEL%20%C3%96%C4%9ERENC%C4%B0%20%C4%B0LANI).pdf', CAST(N'2019-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (544, 1, N'Tokat Gaziosmanpa??a ??niversitesi Sosyal Bilimler Enstit??s??ne Kabul Edilen Yabanc?? Uyruklu Lisans??st?? (Y??ksek Lisans Ve Doktora) ????rencilerinin ??demesi Gereken ????renim ve Kay??t ??creti Miktarlar?? Ve Banka Hesap Numaralar??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4750', CAST(N'2019-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (545, 1, N'Y??KSEK L??SANS TEZ ??NER??S?? VER??LMES?? HAKKINDA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4672', CAST(N'2019-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (546, 1, N'2019-2020 E????T??M ????RET??M YILI G??Z YARIYILI YEDEK L??STEDEN KAYIT HAKKI KAZANANLAR L??STES??', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/8afb8573-ae5c-4819-bb6a-69a622754ee7/url_icerik/yedek%20liste.pdf', CAST(N'2019-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (547, 1, N'TEZS??Z Y??KSEK L??SANSA KAYIT HAKKI KAZANAN ????RENC??LER??N HAR?? ??CRET?? HAKKINDA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4569', CAST(N'2019-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (548, 1, N'2019-2020 E????T??M ????RET??M YILI G??Z YARIYILI Y??KSEK L??SANS VE DOKTORA PROGRAMLARI BA??VURU SONU??LARI A??IKLANDI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/0e0242ee-d775-42ea-90df-f590bc62e374/url_icerik/2019-2020%20G%C3%9CZ%20YARIYILI%20L%C4%B0SANS%C3%9CST%C3%9C%20BA%C5%9EVURU%20SONU%C3%87LARI.pdf', CAST(N'2019-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (549, 1, N'ENST??T??M??Z L??SANS??ST?? ????RENC?? BA??VURULARI SONA ERD??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4460', CAST(N'2019-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (550, 1, N'2019-2020 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m?? ??lan??', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/e760fe34-fd02-4b9d-a06f-904d90a4d846/url_icerik/SOSB%C4%B0L%20%C4%B0LAN%2011.07.2019.pdf', CAST(N'2019-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (551, 1, N'2016-2017 G??Z YARIYILI ve ??NCES?? G??R????L?? ????RENC??LER??N MEZUN??YET S??RES?? HAKKINDA DUYURU', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4215', CAST(N'2019-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (552, 1, N'Yabanc?? Uyruklu ????rencilerin Har?? ??creti Yat??raca???? Banka Hesab??', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4187', CAST(N'2019-07-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (553, 1, N'28 May??s 2019 Tarihli Enstit?? Kurulu Toplant??s?? Ger??ekle??tirildi.', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3878', CAST(N'2019-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (554, 1, N'2016-2017 G??Z YARIYILI ve ??NCES?? G??R????L?? ????RENC??LER??N MEZUN??YET S??RES?? HAKKINDA DUYURU', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/88da27e4-b742-465a-ab85-420944967ba3/url_icerik/MEZUN%C4%B0YET.pdf', CAST(N'2019-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (555, 1, N'Lisans??st?? E??itim ve ????retim Uygulamas??na Y??nelik Usul ve Esaslar??ndaki De??i??iklikler 03.04.2019 Tarihli Senato Karar??yla Y??r??rl????e Girmi??tir.', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/ccbbc5f7-8685-4592-8864-390a0e373a98/url_icerik/Lisans%C3%BCst%C3%BC%20E%C4%9Fitim%20ve%20%C3%96%C4%9Fretim%20Uygulamas%C4%B1na%20Y%C3%B6nelik%20Usul%20ve%20Esaslar%C4%B1ndaki%20De%C4%9Fi%C5%9Fiklikler%20Senato%20Karar%C4%B1yla%20Y%C3%BCr%C3%BCrl%C3%BC%C4%9Fe%20Girmi%C5%9Ftir.pdf', CAST(N'2019-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (556, 1, N'??ZEL ????RENC?? SONU??LARI 2018-2019 BAHAR', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/03c48ecd-2a0a-4b3a-9e78-951049463e74/url_icerik/%C3%96zel%20%C3%96%C4%9Frenci%20Sonu%C3%A7lar%C4%B1%202018-2019%20BAHAR.pdf', CAST(N'2019-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (557, 1, N'2018-2019 BAHAR D??NEM?? TEZS??Z Y??KSEK L??SANS HARCININ YATIRILACA??I BANKA HESABI HAKKINDA', N'https://sosyalb.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2456', CAST(N'2019-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (558, 1, N'2018-2019 BAHAR YARIYILI Y??KSEK L??SANS YEDEK L??STEDEN KAZANANLAR', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/62d67857-31d7-4138-bf10-6f375b656205/url_icerik/2018-2019%20BAHAR%20%C3%96%C4%9ERENC%C4%B0%20ALIM%20SONU%C3%87LARI%20YEDEK%20L%C4%B0STEDEN.pdf', CAST(N'2019-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (559, 1, N'2018-2019 E????T??M ????RET??M YILI BAHAR YARIYILI Y??KSEK L??SANS VE DOKTORA SONU??LARI A??IKLANDI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/484c6fed-066a-4e36-be23-cda0e595b989/url_icerik/2018-2019%20BAHAR%20%C3%96%C4%9ERENC%C4%B0%20ALIM%20SONU%C3%87LARII.pdf', CAST(N'2019-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (560, 1, N'2018-2019 E????T??M ????RET??M YILI BAHAR YARIYILI DOKTORA ??N BA??VURU SONU??LARI', N'https://sosyalb.gop.edu.tr/depo/menuler/birim_10133/duyurular_198/604da939-76a1-43ff-aa19-1f259d976a74/url_icerik/2018-2019%20BAHAR%20B%C4%B0L%C4%B0M%20SINAVI%20%C4%B0LANI.pdf', CAST(N'2019-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (561, 1, N'Corona Vir??s (Covid-19) Salg??n??n??n KA103 ????renci ve Personel Hareketli??ine Y??nelik Etkileriyle ??lgili S??k??a Sorulan Sorular ve Cevaplar??-G??ncelleme', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6948', CAST(N'2020-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (562, 1, N'Yararlan??c??lar??m??za Duyuru', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6704', CAST(N'2020-03-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (563, 1, N'Erasmus ????renim ve Staj Hareketlili??i Sonu??lar??', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6677', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (564, 1, N'2019-2020 Erasmus Staj Hareketlili??i ve 2020-2021 Erasmus ????renim Hareketlili??i ??ngilizce Yaz??l?? S??nav Sonu??lar??', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6507', CAST(N'2020-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (565, 1, N'2020-2021 Erasmus ????renim Hareketlili??i ??ngilizce S??nav??na Girilecek Yerler', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6454', CAST(N'2020-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (566, 1, N'2019-2020 Erasmus Staj Hareketlili??i ve 2020-2021 Erasmus ????renim Hareketlili??i ??ngilizce S??nav?? ??sim Listesi', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6431', CAST(N'2020-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (567, 1, N'2019-2020 Erasmus Staj Hareketlili??i Ba??vurular?? Ba??lam????t??r.', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6186', CAST(N'2020-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (568, 1, N'2020-2021 Erasmus ????renim Hareketlili??i Ba??vurular?? Ba??lam????t??r.', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6185', CAST(N'2020-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (569, 1, N'Erasmus Ders Verme Hareketlili??i Sonu??lar??', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5657', CAST(N'2019-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (570, 1, N'Erasmus Ders Verme Ve E??itim Alma Hareketlili??i Sonu??lar??', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5456', CAST(N'2019-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (571, 1, N'2019-2020 Erasmus Ders Verme ve E??itim Alma Hareketlili??i Ba??vurular?? Ba??lam????t??r.', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=5214', CAST(N'2019-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (572, 1, N'Erasmus ????renci De??i??imi Bahar D??nemi Oryantasyon Program??', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=4993', CAST(N'2019-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (573, 1, N'Seminer Sunumu-Zekai Kaya', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7743', CAST(N'2020-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (574, 1, N'Seminer Sunumu-Bekir Bayar', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7742', CAST(N'2020-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (575, 1, N'Tez savunmas??-Fatih Kalkan', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7686', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (576, 1, N'Tez Savunmas??-Hanife Demir', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7685', CAST(N'2020-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (577, 1, N'Seminer Sunumu-M??nise Ba??elmas', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7577', CAST(N'2020-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (578, 1, N'Seminer Sunumu-Muhammet Musab G??m????', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7554', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (579, 1, N'Seminer Sunumu Alper Bar???? Do??an', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7553', CAST(N'2020-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (580, 1, N'Seminer Sunumu-Cansu Al??nl??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7552', CAST(N'2020-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (581, 1, N'Tez Savunmas??-Yasin Kanal', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7551', CAST(N'2020-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (582, 1, N'T??K Toplant??s??-Dilara ??ayc?? Karak??se', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7550', CAST(N'2020-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (583, 1, N'T??K Toplant??s??-Zehra Y??lmazer', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7482', CAST(N'2020-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (584, 1, N'Tez Savunmas??-Muhammed Ali Kel', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7481', CAST(N'2020-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (585, 1, N'Seminer Sunumu-Nadir Demir', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7474', CAST(N'2020-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (586, 1, N'Seminer Sunumu-Faik S??rer', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7471', CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (587, 1, N'Seminer Sunumu-Onur Can Pehlivan', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7470', CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (588, 1, N'T??K Toplant??s??-??lyas Besni', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7469', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (589, 1, N'Seminer Sunumu-Din??er Bekta??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7463', CAST(N'2020-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (590, 1, N'Seminer Sunumu-Arif Ayd??n', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7449', CAST(N'2020-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (591, 1, N'Seminer Sunumu-Ferhat Alpagu', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7448', CAST(N'2020-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (592, 1, N'Seminer Sunumu-Abdurrahman Demir', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7447', CAST(N'2020-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (593, 1, N'Seminer Sunumu-Elif Ceren Sakall?? Do??ru', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7439', CAST(N'2020-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (594, 1, N'Seminer Sunumu-Sevgi ??ahin', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7438', CAST(N'2020-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (595, 1, N'Tez Savunmas??-Abdullah Enes Mandal', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7437', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (596, 1, N'Tez Savunmas??-Merve Nur Maden', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7436', CAST(N'2020-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (597, 1, N'Tez Savunmas??-Ay??e R??veyda G??nay', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7425', CAST(N'2020-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (598, 1, N'Seminer Sunumu-Osman Kele??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7420', CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (599, 1, N'Seminer Sunumu-Figan ??ahin G??k', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7417', CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (600, 1, N'Tez Sunumu-Tuba Kazakl??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7403', CAST(N'2020-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (601, 1, N'Seminer Sunumu-Rukiye Nimet ??zt??rk', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7402', CAST(N'2020-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (602, 1, N'Seminer Sunumu-Din??er Bekta??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7401', CAST(N'2020-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (603, 1, N'Seminer Sunumu-Enise Aslan', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7400', CAST(N'2020-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (604, 1, N'Tez Savunmas??-Olcay S??ng??t', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7397', CAST(N'2020-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (605, 1, N'Tez Savunmas??-M??nire ??zden', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7396', CAST(N'2020-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (606, 1, N'Seminer Sunumu-Merve Yumu??ak', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7395', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (607, 1, N'Seminer Sunumu-Merve Mi??oo??ullar??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7382', CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (608, 1, N'Tez Savunmas??-Safiye Sevde Ertu??ral', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7380', CAST(N'2020-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (609, 1, N'Seminer Sunumu-Elif Y??lmaz', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7379', CAST(N'2020-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (610, 1, N'Seminer Sunumu- Rafet POLAT', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7378', CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (611, 1, N'Seminer Sunumu-Didem Y??ntem', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7347', CAST(N'2020-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (612, 1, N'Seminer Sunumu-Enes ??olak', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7346', CAST(N'2020-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (613, 1, N'Seminer Sunumu-M.Serdar Orhan', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7303', CAST(N'2020-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (614, 1, N'Seminer Sunumu- Mustafa ??leri', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7302', CAST(N'2020-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (615, 1, N'Seminer Sunumu-Alperen Hasg??l', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7277', CAST(N'2020-06-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (616, 1, N'Seminer Sunumu-??brahim Toprak', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7276', CAST(N'2020-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (617, 1, N'Seminer Sunumu-Ahmet Co??kun', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7275', CAST(N'2020-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (618, 1, N'Seminer Sunumu-Ahmet Karbuz', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7261', CAST(N'2020-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (619, 1, N'Seminer Sunumu-??mer Furkan ??eker', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7260', CAST(N'2020-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (620, 1, N'Seminer Sunumu-Nilg??n At??l??r', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7256', CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (621, 1, N'Seminer Sunumu-Merve Aras', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7254', CAST(N'2020-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (622, 1, N'Seminer Sunumu-Samet Ar??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7223', CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (623, 1, N'Enstit??m??zde Dijital ??mkanlar Kullan??larak Tez Savunma S??nav?? Yap??lm????t??r', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6909', CAST(N'2020-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (624, 1, N'2020-2021 E????T??M VE ????RET??M YILI G??Z YARIYILI DANI??MAN L??STELER??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/d195b5e0-fda1-4d3a-bb46-1763f7b1535d/url_icerik/2020-2021%20E%C4%9E%C4%B0T%C4%B0M%20%C3%96%C4%9ERET%C4%B0M%20YILI%20G%C3%9CZ%20YARIYILI%20DANI%C5%9EMAN%20L%C4%B0STELER%C4%B0%20.PDF', CAST(N'2020-08-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (625, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z YARIYILI BO?? KALAN KONTENJANLARA A??T ??K??NC?? YEDEK L??STE ??LANI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/0d17db0c-ce74-49ad-b1f2-fba66caf7fc3/url_icerik/2020-2021%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20%C3%96%C4%9Frenci%20Al%C4%B1m%20Sonu%C3%A7lar%C4%B1%20%20(%C4%B0kinci%20Yedek%20Liste).pdf', CAST(N'2020-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (626, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z YARIYILI BO?? KALAN KONTENJANLARA ??L????K??N B??R??NC?? YEDEK L??STE', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/cc6113ad-5682-410d-a80a-87a50e7fc5f8/url_icerik/2020-2021%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20%C3%96%C4%9Frenci%20Al%C4%B1m%C4%B1%20Birinci%20Yedek%20Listesi.pdf', CAST(N'2020-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (627, 1, N'2020-2021 E????T??M - ????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM BA??VURU SONU??LARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/2ad24950-2e8f-4e8d-bdfc-16f4f0dba3bd/url_icerik/2020-2021%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20%C3%96%C4%9Frenci%20Al%C4%B1m%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (628, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z YARIYILI DOKTORA ????RENC?? ALIMI YAZILI SINAV SONU??LARI ??LE M??LAKATA G??RECEK ADAYLAR VE SINAV YER?? B??LG??S??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/75211039-58e7-431e-ad24-0c0e2bcfd50f/url_icerik/Doktora%20%C3%96%C4%9Frenci%20Al%C4%B1m%C4%B1%20Yaz%C4%B1l%C4%B1%20S%C4%B1nav%20Sonu%C3%A7lar%C4%B1%202020-2021.pdf', CAST(N'2020-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (629, 1, N'2020-2021 E????T??M ????RET??M YILI G??Z YARIYILI DOKTORA ??N DE??ERLEND??RME SONUCU ??LE YAZILI SINAVA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/8b16804d-75fe-494a-bf90-ee456743a6d5/url_icerik/Doktora%20%C3%96n%20De%C4%9Ferlendirme%20Sonucu.pdf', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (630, 1, N'Tez A??amas??ndaki Lisans??st?? ????rencilerimize Ek S??re Verilmesi Hakk??nda', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7539', CAST(N'2020-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (631, 1, N'2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m ??lan?? ve Kontenjanlar??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/2752d2a8-94ad-45dd-b916-4e1de6286c26/url_icerik/E%C4%9Fitim%2020-21%20g%C3%BCz%20%C3%B6%C4%9Frenci%20al%C4%B1mlar%C4%B1%20(Y%C3%96NET%C4%B0M)%20(ebys).pdf', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (632, 1, N'2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m ??lan??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/d64b8c60-c339-4d7f-9793-80d243c04496/url_icerik/2020-2021%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20%C3%96%C4%9Frenci%20Al%C4%B1m%20%C4%B0lan%C4%B1.pdf', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (633, 1, N'Lisans??st?? ????rencileri ve T??m Akademisyenlerin Open Researcher and Contributor ID (ORCID) Numaras?? Almalar?? Hakk??nda', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7410', CAST(N'2020-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (634, 1, N'2019-2020 Bahar D??nemi Tezli-Tezsiz Y??ksek Lisans ve Doktora Yar??y??l Sonu (Final) S??nav Takvimi', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/75827377-080f-4648-b4f7-5b356539378e/url_icerik/Yar%C4%B1y%C4%B1l%20Sonu%20S%C4%B1nav%20Takvimi.pdf', CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (635, 1, N'Uzaktan ????retim Tezsiz Y??ksek Lisans Program?? Yar??y??l Sonu S??navlar?? Hakk??nda Duyuru (G??ncellenmi??)', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7343', CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (636, 1, N'2019-2020 Bahar D??nemi Tezli-Tezsiz Y??ksek Lisans ve Doktora Ara S??nav Takvimi - G??ncellenmi??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/7ccb8cfc-5945-40d4-974e-d077ea987691/url_icerik/S%C4%B1nav%20Takvimi-G%C3%BCncellenmi%C5%9F.pdf', CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (637, 1, N'2019-2020 Bahar D??nemi Tezli-Tezsiz Y??ksek Lisans ve Doktora Ara S??nav Takvimi', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/aa4a74d8-94a7-4985-8ed7-6b54b4fedcec/url_icerik/S%C4%B1nav%20Takvimi.pdf', CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (638, 1, N'2019-2020 Bahar D??nemi Ara S??navlar?? Hakk??nda Duyuru', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7033', CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (639, 1, N'Alan Semineri, Tez Savunmas?? ve Yeterlik S??navlar??n??n Dijital Ortamda Yap??lmas?? Hk.', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6859', CAST(N'2020-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (640, 1, N'2019-2020 Bahar D??nemi Y??K Kay??t Dondurma Duyurusu', N'https://ogr.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=6847', CAST(N'2020-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (641, 1, N'Uzaktan E??itim Kapsam??nda Enstit??m??zde A????lan Dersler (Uzmanl??k Alan Dersi, Alan Semineri ve Tez ??al????mas?? Hari??)', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6812', CAST(N'2020-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (642, 1, N'Uzaktan E??itimle ??lgili ????rencilerimize ??nemli Duyuru', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6791', CAST(N'2020-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (643, 1, N'????RENC?? K??ML??K KARTLARI HAKKINDA', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6408', CAST(N'2020-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (644, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI ??ZEL ????RENC?? DE??ERLEND??RME SONU??LARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/0b102df2-565f-4b07-922a-e2284628a0ad/url_icerik/2019-2020%20Bahar%20Yar%C4%B1l%C4%B1y%C4%B1%20%C3%96zel%20%C3%96%C4%9Frenci%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (645, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI E????T??M Y??NET??M?? UZAKTAN ????RET??M PROGRAMI DERS PROGRAMI (G??NCELLENM????)', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/c7ac84ae-9d5b-428e-9cb8-f08e5b31394a/url_icerik/E%C4%9Fitim%20Y%C3%B6netimi%20Uzaktan%20%C3%96%C4%9Fretim%20Tezsiz-G%C3%BCncel.pdf', CAST(N'2020-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (646, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI E????T??M Y??NET??M?? UZAKTAN ????RET??M PROGRAMI DANI??MANLIK L??STES??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/426c7aef-0c1a-4a95-8e0b-b9681d987ec7/url_icerik/Dan%C4%B1%C5%9Fmanl%C4%B1k-EY.pdf', CAST(N'2020-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (647, 1, N'2019-2020 Bahar D??nemi Ders Kay??tlar?? ??nternet ??zerinden 3-7 ??ubat 2020 tarihleri aras??nda yap??lacakt??r.', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6169', CAST(N'2020-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (648, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI DOKTORA VE TEZL?? Y??KSEK L??SANS HAFTALIK DERS PROGRAMI', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6166', CAST(N'2020-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (649, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR D??NEM?? YATAY GE?????? DE??ERLEND??RME SONU??LARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/8c5b17a9-fcf6-40fd-a5ba-d0bf3b7223e7/url_icerik/2019-2020%20Bahar%20%20Yar%C4%B1y%C4%B1l%C4%B1%20%C3%96%C4%9Frenci%20%20Yatay%20Ge%C3%A7i%C5%9F%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (650, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI YEN?? KAYIT YAPAN ????RENC??LER??N DANI??MANLIK L??STES??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6140', CAST(N'2020-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (651, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI ??ZEL ????RENC?? KONTENJANLARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/694202a4-d314-49d4-bcba-39d89a9d3b44/url_icerik/2019-2020%20BAHAR%20%C3%96ZEL%20%C3%96%C4%9ERENC%C4%B0%20%C4%B0LANI.pdf', CAST(N'2020-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (652, 1, N'E??itim Y??netimi Tefti??i Planlamas?? ve Ekonomisi Tezsiz Y??ksek Lisans Program?? Hk.', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6101', CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (653, 1, N'2019-2020 E????T??M - ????RET??M YILI BAHAR YARILI L??SANS??ST?? ????RENC?? BA??VURULARINDA BO?? KALAN KONTENJANLARA ??L????K??N ??K??NC?? YEDEK L??STE', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/455d9a97-882f-4621-92b2-e2318bd48405/url_icerik/2019-2020%20Bahar%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20Bo%C5%9F%20Kalan%20Kontenjanlara%20%C4%B0li%C5%9Fkin%20%C4%B0kinci%20Yedek%20Liste.pdf', CAST(N'2020-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (654, 1, N'2019-2020 E????T??M - ????RET??M YILI BAHAR YARILI L??SANS??ST?? ????RENC?? BA??VURULARINDA BO?? KALAN KONTENJANLARA ??L????K??N B??R??NC?? YEDEK L??STE', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/f164c191-81dc-4d15-9fb5-365c2dfb3bf5/url_icerik/2019-2020%20Bahar%20Yar%C4%B1y%C4%B1l%C4%B1%20Bo%C5%9F%20Kalan%20Kontenjanlara%20%C4%B0li%C5%9Fkin%20Birinci%20Yedek%20Liste.pdf', CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (655, 1, N'2019-2020 E????T??M - ????RET??M YILI BAHAR YARIYILI L??SANS??ST?? ????RENC?? ALIM BA??VURU SONU??LARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/576b1098-7350-4220-8082-e9503c33fef0/url_icerik/2019-2020%20Bahar%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20%C3%96%C4%9Frenci%20Al%C4%B1m%20Ba%C5%9Fvuru%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (656, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI DOKTORA YAZILI B??L??M SINAVI SONU??LARI ??LE M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/22a47a69-4645-494f-a239-9b65252099ed/url_icerik/Bilim%20S%C4%B1nav%C4%B1%20Sonu%C3%A7%20Duruyu%20Metni%202020.pdf', CAST(N'2020-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (657, 1, N'PROTOKOL KAPSAMINDA UZAKTAN ????RET??M TEZS??Z Y??KSEK L??SANS G??NCELLENM???? ????REN??M ??CRET??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5941', CAST(N'2020-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (658, 1, N'2019-2020 E????T??M ????RET??M YILI BAHAR YARIYILI DOKTORA ??N DE??ERLEND??RME SONUCU ??LE YAZILI B??L??M SINAVINA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/f3d79ae7-fb83-46f9-860e-2cc5be258891/url_icerik/Doktora%20%C3%96n%20De%C4%9Ferlendirme%20Sonucu.pdf', CAST(N'2020-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (659, 1, N'2019-2020 G??Z D??NEM?? SINAV PROGRAMI', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5902', CAST(N'2020-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (660, 1, N'2019-2020 E??itim ????retim Y??l?? Bahar Yar??y??l?? Lisans??st?? ????renci Al??m ??lan??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/dadcb158-32c5-46c7-8475-c03e012f3a45/url_icerik/2019-2020%20Bahar%20Yar%C4%B1y%C4%B1l%C4%B1%20%20Lisans%C3%BCst%C3%BC%20Al%C4%B1m%20%C4%B0lan%C4%B1.pdf', CAST(N'2019-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (661, 1, N'YEN?? KAYIT YAPAN ????RENC??LER??N K??ML??KLER?? ??IKMI??TIR ENST??T?? ????RENC?? ????LER??NDEN ALAB??L??RS??N??Z.', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4869', CAST(N'2019-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (662, 1, N'TEZ SAVUNMASINA G??RD??KTEN SONRA AZAM?? S??RELER?? B??TEN ????RENC??LER??N D??KKAT??NE', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/57b8410d-a323-4b0f-b20f-86d76ac577d9/url_icerik/2016-2017%20G%C3%9CZ%20YARIYILI%20VE%20%C3%96NCES%C4%B0%20KAYITLI%20%C3%96%C4%9ERENC%C4%B0LER%20WEB%20%C4%B0LANI[463].pdf', CAST(N'2019-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (663, 1, N'2019-2020 E????T??M ????RET??M G??Z YARIYILI M??SAF??R (??ZEL) ????RENC?? KONTENJANLARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/23b23244-1ba2-4f94-b056-ef3b2b16a7cd/url_icerik/2019-2020%20G%C3%9CZ%20%C3%96ZEL%20%C3%96%C4%9ERENC%C4%B0%20WEB%20%C4%B0LANI[464].pdf', CAST(N'2019-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (664, 1, N'Tuition and Registration Fees and Bank Account Numbers of International Graduate Students', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/e2b73c01-7d79-4082-8408-71cbcb2bb506/url_icerik/yabanc%C4%B1%20uyruklu%20hesap%20ebilen.pdf', CAST(N'2019-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (665, 1, N'Uluslararas?? Lisans??st?? ????rencilerin ??demesi Gereken ????renim ve Kay??t ??creti Miktarlar?? ve Banka Hesap Numaralar??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/e841d6f7-4a5e-4175-a6f0-10fa9d805e3d/url_icerik/yabanc%C4%B1%20uyruklu%20hesap%20ebilen.pdf', CAST(N'2019-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (666, 1, N'2019-2020 E????T??M - ????RET??M YILI G??Z YARIYILI DOKTORA VE TEZL?? Y??KSEK L??SANS ????RENC?? ALIM BA??VURU SONU??LARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/1c1744c6-bd5e-4df0-ad7c-c9d349764080/url_icerik/2019-2020%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20%C3%96%C4%9Frenci%20Al%C4%B1m%20%C4%B0lan%C4%B12.pdf', CAST(N'2019-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (667, 1, N'2019-2020 E????T??M-????RET??M YILI G??Z YARIYILI KAYIT YAPTIRAN ????RENC??LER??M??Z??N OKUL NUMARALARI VE DANI??MANLIKLARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/403bb0b8-d45a-4319-b468-817b627d5477/url_icerik/PDF%20DANI%C5%9EMANLIK.pdf', CAST(N'2019-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (668, 1, N'2019-2020 E????T??M ????RET??M YARIYILI G??Z YARIYILINDA YEN?? KAYIT YAPAN ????RENC??LER??M??Z??N D??KKAT??NE', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/4d267b01-5520-42b5-bf07-e58b7746f5d4/url_icerik/kimlik.pdf', CAST(N'2019-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (669, 1, N'2019-2020 E????T??M ????RET??M YILI G??Z YARIYILI DOKTORA VE TEZL?? Y??KSEKL??SANS ????RENC?? ALIM ??LANI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/77da1cef-1427-4850-b5d1-614d4795246a/url_icerik/T%C3%9CRK%C3%87E%20DOK.%20ve%20SOSYAL%20B%C4%B0LG.YLS%20Al%C4%B1m%20%C4%B0lan%C4%B1.pdf', CAST(N'2019-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (670, 1, N'2019-2020 E????T??M - ????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM BA??VURU SONU??LARI', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/777d4722-1036-482d-8be3-10d093567f63/url_icerik/2019-2020%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20Ba%C5%9Fvuru%20De%C4%9Ferlendirme%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2019-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (671, 1, N'Yabanc?? Uyruklu ????rencilerin Har?? ??creti Yat??raca???? Banka Hesab??', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4222', CAST(N'2019-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (672, 1, N'2019-2020 E??itim ????retim Y??l?? G??z Yar??y??l?? Lisans??st?? ????renci Al??m ??lan??', N'https://ebilen.gop.edu.tr/depo/menuler/birim_10134/duyurular_198/5a93039e-a0dd-4113-85bd-f210cf0f3640/url_icerik/2019-2020%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20%C3%96%C4%9Frenci%20Al%C4%B1m%20%C4%B0lan%C4%B1.pdf', CAST(N'2019-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (673, 1, N'2018-2019 BAHAR YARIYILI HAFTALIK DERS PROGRAMLARI', N'https://ebilen.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2591', CAST(N'2019-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (674, 1, N'2020-2021 E????T??M-????RET??M YILI BAHAR YARIYILI 100/2000 Y??K DOKTORA BURSLU ????RENC?? ALIMI ??N DE??ERLEND??RME SONUCU, B??L??M SINAVI/M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/ad966fa7-1f24-4bac-a674-4824e0ccce6c/url_icerik/%C4%B0LAN.pdf', CAST(N'2020-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (675, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI 100/2000 Y??K DOKTORA BURSU ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/f76857e8-23ce-40a4-b352-7395a43dee87/url_icerik/%C4%B0LAN.pdf', CAST(N'2020-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (676, 1, N'SA??LIK B??L??MLER?? ENST??T??S?? L??SANS??ST?? PROGRAMLARDA BO?? KALAN KONTENJANLARA A??T ??K??NC?? YEDEK ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/28f6f8f2-ebf7-47bf-8a7c-112f2b3a398d/url_icerik/Sagl%C4%B1k_%C4%B0kinci_Yedek.pdf', CAST(N'2020-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (677, 1, N'FEN B??L??MLER?? ENST??T??S?? L??SANS??ST?? PROGRAMLARDA BO?? KALAN KONTENJANLARA A??T ??K??NC?? YEDEK ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/ed83e4b3-87f6-451f-9be9-7a809e3fe600/url_icerik/Fen_%C4%B0kinci_Yedek.pdf', CAST(N'2020-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (678, 1, N'FEN B??L??MLER?? ENST??T??S?? L??SANS??ST?? PROGRAMLARDA BO?? KALAN KONTENJANLARA A??T B??R??NC?? YEDEK ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/6a7b5760-814a-4357-a645-b9b8d413f968/url_icerik/fen%20yedek.pdf', CAST(N'2020-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (679, 1, N'SA??LIK B??L??MLER?? ENST??T??S?? L??SANS??ST?? PROGRAMLARDA BO?? KALAN KONTENJANLARA A??T B??R??NC?? YEDEK ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/76fa8de3-ef47-4657-afc5-c42e74435da6/url_icerik/sa%C4%9Fl%C4%B1k%20yedek.pdf', CAST(N'2020-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (680, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM BA??VURU SONU??LARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/61c4e92d-e026-42ee-a49a-6e254260b851/url_icerik/2020-2021%20E%C4%9Fitim-%C3%96%C4%9Fretim%20Y%C4%B1l%C4%B1%20G%C3%BCz%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20%C3%96%C4%9Frenci%20Al%C4%B1m%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (681, 1, N'Y??KSEK L??SANS ????RENC?? ADAYLARINA ??NEML?? DUYURU', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7715', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (682, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI ??N DE??ERLEND??RME SONUCU DOKTORA B??L??M SINAVI/M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/96ef9ef9-7d63-49d9-af43-01e522ca1100/url_icerik/DR%20%C4%B0LAN.pdf', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (683, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/2bb3aa2e-5e83-4cf5-be1b-d160b9a9d43c/url_icerik/FEN%20ilan%20sablon%20guz%202020-2021.pdf', CAST(N'2020-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (684, 1, N'Fen Bilimleri Enstit??s?? Online Tez Savunma S??navlar??, Yeterlik S??navlar??, T??K toplant??lar?? Uygulama Prensipleri ve Sunucu Kullan??m Klavuzu', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/a8afaec6-6268-42bd-9cd5-520feb9e3b36/url_icerik/online%20tez%20savunma%20s%C4%B1nav%20program%C4%B1%20bilgilendirme%20semineri2.pdf', CAST(N'2020-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (685, 1, N'T??M Y??KSEK L??SANS VE DOKTORA ????RENC??LER??M??Z??N D??KKAT??NE', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7388', CAST(N'2020-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (686, 1, N'ARASINAVLAR ??LE ??LG??L?? DUYURU', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/e9cb975a-417c-4ac3-a900-da72acf8ddfd/url_icerik/aras%C4%B1nav%20duyurusu.pdf', CAST(N'2020-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (687, 1, N'KAYIT DONDURMA VE SINAVLARLA ??LG??L?? ??NEML?? DUYURU (G??NCEL)', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/ba164633-e1c4-48a1-8b69-1e663b3dfa7a/url_icerik/kay%C4%B1t%20dondurma%20ve%20s%C4%B1navlar%20duyuru.pdf', CAST(N'2020-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (688, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI ????RENC??LER??N??N K??ML??K KARTLARI ??IKMI??TIR. M??RACAAT HAL??NDE ENST??T??M??ZDEN TEM??N EDEB??L??RLER', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6434', CAST(N'2020-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (689, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI 100/2000 Y??K BURSLU DOKTORA ????RENC??S?? ALIMI BA??VURU SONU??LARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/dec348f4-f60b-4ee0-a6da-139abce63054/url_icerik/100-2000%20SONUC%20%C4%B0LAN.pdf', CAST(N'2020-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (690, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI 100/2000 Y??K DOKTORA BURSLU ????RENC?? ALIMI ??N DE??ERLEND??RME SONUCU, B??L??M SINAVI/M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/2bc0d2a6-4c07-4c6d-ac9f-9b315de09b0c/url_icerik/100-2000Doktora%20ondegerlendirme%20sonucu%202019-2020%20BAHAR.pdf', CAST(N'2020-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (691, 1, N'2019-2020 BAHAR YARIYILI 100/2000 Y??K DOKTORA BURSLU ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/a5a544e4-b2db-4c98-a334-366f02a7cc6d/url_icerik/BAHAR%20100-2000%20DOKTORA%20ALIM%20%C4%B0LANI.pdf', CAST(N'2020-02-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (692, 1, N'2019-2020 BAHAR YARIYILI 100/2000 Y??K DOKTORA BURSLU ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/9e709f89-bf7f-4489-b99e-520042f843eb/url_icerik/BAHAR%20100-2000%20DOKTORA%20ALIM%20%C4%B0LANI.pdf', CAST(N'2020-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (693, 1, N'AZAM?? S??RES?? DOLMU?? OLAN ????RENC??LER??N D??KKAT??NE', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/705bc441-35e5-4835-bd51-c74d1ffe138a/url_icerik/AZAM%C4%B0%20S%C3%9CRES%C4%B0%20DOLMU%C5%9E%20OLAN%20%C3%96%C4%9ERENC%C4%B0LER%C4%B0N%20D%C4%B0KKAT%C4%B0NE.pdf', CAST(N'2020-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (694, 1, N'FEN B??L??MLER?? ENST??T??S?? ??ZEL ????RENC?? KONTENJANLARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/5c780c1e-e553-434a-a840-9012091f0bb2/url_icerik/%C3%B6zel%C3%B6%C4%9Frenci%20(2).docx', CAST(N'2020-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (695, 1, N'2019-2020 BAHAR YARIYILI DERS KAYIT ????LEMLER??', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6094', CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (696, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI L??SANS??ST?? AS??L L??STE KAYITLARI SONRASI BO?? KALAN KONTENJANLAR VE YEDEK L??STELER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/3bacc6b3-b9d4-4cf2-b2e1-e70dd206953f/url_icerik/bos%20kontenjanlar%20ve%20yedek%20liste.pdf', CAST(N'2020-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (697, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI L??SANS??ST?? ????RENC?? ALIM BA??VURU SONU??LARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/973679d0-39b2-4614-9861-73cb7dfa5271/url_icerik/BA%C5%9EVURU%20SONU%C3%87LARI%202019-2020%20bahar.pdf', CAST(N'2020-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (698, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI ??N DE??ERLEND??RME SONUCU DOKTORA B??L??M SINAVI/ M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/d779a222-4f45-4868-8525-6dc9cc18751c/url_icerik/%C4%B0LAN.pdf', CAST(N'2020-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (699, 1, N'Lisans??st?? ????renci Adaylar??n??n Online Ba??vurusunda Dikkat Edilecek Hususlar', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/9a21cf92-51ec-45b2-86cd-e9d3076bc5c9/url_icerik/Tokat%20Gaziosmanpa%C5%9Fa%20%C3%9Cniversitesi%20Fen%20Bilimleri%20Enstit%C3%BCs%C3%BC.pdf', CAST(N'2019-12-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (700, 1, N'2019-2020 E????T??M-????RET??M YILI BAHAR YARIYILI L??SANS??ST?? ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/8d5a9087-8429-42c2-a9fb-3f05859f159c/url_icerik/2019-2020%20bahar%20ilan1.pdf', CAST(N'2019-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (701, 1, N'Y??KSEK L??SANS VE DOKTORA ????RENC?? K??ML??KLER?? ??IKMI??TIR.', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4910', CAST(N'2019-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (702, 1, N'KAYDI S??L??NECEK ????RENC?? L??STES?? (AZAM?? S??REY?? A??ANLAR)', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/d0142726-578e-42f6-b93b-9df5bcc0373f/url_icerik/KAYDI%20S%C4%B0L%C4%B0NECEK%20%C3%96%C4%9ERENC%C4%B0%20L%C4%B0STES%C4%B0-2.pdf', CAST(N'2019-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (703, 1, N'Yabanc?? Uyruklu Lisans??st?? ????rencilerinin ??demesi gereken ????renim ve Uluslararas?? ????renci Dan????manl??k ??creti miktarlar?? ve banka hesap numaralar?? -Tuition and Internatinal Student Supervision fees, and bank account numbers of International Graduate students', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/75fffa19-d73c-46da-912f-415f2174e74d/url_icerik/yabanc%C4%B1%20uyruklu%20hesap2.pdf', CAST(N'2019-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (704, 1, N'2019-2020 G??Z YARIYILI DERS KAYIT ????LEMLER??', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4673', CAST(N'2019-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (705, 1, N'AZAM?? S??RES?? DOLMU?? OLAN ????RENC??LER??N D??KKAT??NE', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/cbfc78c3-60a3-41e7-900f-46c8943f2e04/url_icerik/AZAM%C4%B0%20S%C3%9CRES%C4%B0%20DOLMU%C5%9E%20OLAN%20%C3%96%C4%9ERENC%C4%B0LER%C4%B0N%20D%C4%B0KKAT%C4%B0NE.pdf', CAST(N'2019-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (706, 1, N'2019-2020 G??Z YARIYILI ??ZEL ????RENC?? KONTEJANLARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/db4bfa52-375a-4456-b3f9-1e04bd5324ba/url_icerik/%C3%96ZEL%20%C3%96%C4%9ERENC%C4%B0%20YEN%C4%B0.pdf', CAST(N'2019-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (707, 1, N'2019-2020 E????T??M-????RET??M YILI G??Z YARIYILI 100/2000 Y??K DOKTORA BURSU B??L??M SINAVI/M??LAKAT SONU??LARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/dbdfcc34-072a-42cc-aa31-8d1a648ae027/url_icerik/100-2000%20g%C3%BCz%20sonu%C3%A7%20(1).pdf', CAST(N'2019-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (708, 1, N'2019-2020 E????T??M-????RET??M G??Z YARIYILI 100/2000 Y??K DOKTORA ??N DE??ERLEND??RME SONUCU B??L??M SINAVI/M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/cccc48e4-2c87-49e3-a19a-33f4a88546c0/url_icerik/100-2000Doktora%20ondegerlendirme%20sonucu%202019-2020%20guz.pdf', CAST(N'2019-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (709, 1, N'100/2000 Y??K DOKTORA BURSU ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/a935cb5f-d01b-40dc-b2fc-8bd875af898f/url_icerik/ilan%20metni%201.pdf', CAST(N'2019-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (710, 1, N'2019-2020 E????T??M-????RET??M YILI G??Z YARIYILI YATAY GE?????? BA??VURU SONU??LARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/b2a1c42c-2e7e-4abc-b7fe-e4d4b9e3f6b9/url_icerik/y%C3%BCksek%20lisans%20yatay%20ge%C3%A7i%C5%9F%20de%C4%9Ferlendirme%20sonu%C3%A7lar%C4%B1.xls', CAST(N'2019-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (711, 1, N'2019-2020 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM BA??VURU SONU??LARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/0bc3eb61-1f80-4ed1-9e68-e31d59c97902/url_icerik/BA%C5%9EVURU%20SONU%C3%87LARI%202019-2020%20guz.pdf', CAST(N'2019-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (712, 1, N'2019-2020 E????T??M-????RET??M YILI G??Z YARIYILI ??N DE??ERLEND??RME SONUCU DOKTORA B??L??M SINAVI/ M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/3a03ec13-2a00-4daf-af5b-29039782cb08/url_icerik/Doktora%20ondegerlendirme%20sonucu%202019-2020%20guz.pdf', CAST(N'2019-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (713, 1, N'2019-2020 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/74be6683-3aea-4e8f-bb66-d1fc13531250/url_icerik/TOG%C3%9C%20Fen%20Bilimeri%20Enstit%C3%BCs%C3%BC.pdf', CAST(N'2019-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (714, 1, N'2016-2017 G??Z YARIYILI ve ??NCES?? G??R????L?? ????RENC??LER??N MEZUN??YET S??RES?? HAKKINDA DUYURU', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/6c717af0-2901-4685-a573-6bbb5e137165/url_icerik/MEZUN%C4%B0YET.pdf', CAST(N'2019-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (715, 1, N'Lisans??st?? E??itim ve ????retim Uygulamas??na Y??nelik Usul ve Esaslar?????ndaki De??i??iklikler 03.04.2019 Tarihli Senato Karar??yla Y??r??rl????e Girmi??tir.', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/01780678-7a99-4549-89ae-b0c2173edc6a/url_icerik/Lisans%C3%BCst%C3%BC%20E%C4%9Fitim%20ve%20%C3%96%C4%9Fretim%20Uygulamas%C4%B1na%20Y%C3%B6nelik%20Usul%20ve%20Esaslar%C4%B1ndaki%20De%C4%9Fi%C5%9Fiklikler%20Senato%20Karar%C4%B1yla%20Y%C3%BCr%C3%BCrl%C3%BC%C4%9Fe%20Girmi%C5%9Ftir.pdf', CAST(N'2019-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (716, 1, N'SINAV SONRASI TEZ TESL??M S??REC??NDE YAPILACAK ????LEMLER', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/20a411d6-f83b-4c18-a1a9-de99d7bbc58f/url_icerik/formlar_20190312092513.pdf', CAST(N'2019-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (717, 1, N'Tez ??neri Formlar??nda De??i??iklik', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3020', CAST(N'2019-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (718, 1, N'2018-2019 E????T??M-????RET??M YILI BAHAR YARIYILI Y??K 100/2000 DOKTORA ALIM SONU??LARI', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2691', CAST(N'2019-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (719, 1, N'2018-2019 E????T??M-????RET??M BAHAR YARIYILI 100/2000 Y??K DOKTORA ??N DE??ERLEND??RME SONUCU B??L??M SINAVI/M??LAKATA G??RECEK ADAYLAR VE SINAV YERLER??', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/10bc2677-37dd-4381-8eb1-36d2ebd8efd5/url_icerik/ens_bilim_sinavi_girenler1.pdf', CAST(N'2019-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (720, 1, N'2018-2019 E????T??M-????RET??M YILI BAHAR YARIYILI 100/2000 DOKTORA PROGRAMI ????RENC?? ALIM ??LANI', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2598', CAST(N'2019-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (721, 1, N'????RENC?? K??ML??KLER??', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2576', CAST(N'2019-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (722, 1, N'L??SANS??ST?? ????RENC??LER??N??N DERS KAYIT ????LEMLER??', N'https://fbe.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2453', CAST(N'2019-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (723, 1, N'2018-2019 E????T??M-????RET??M YILI BAHAR YARIYILI ??ZEL ????RENC?? KONTENJANLARI', N'https://fbe.gop.edu.tr/depo/menuler/birim_10132/duyurular_198/36e210b5-4b71-40e2-81d4-0519a61effd9/url_icerik/%C3%96ZEL%20%C3%96%C4%9ERENC%C4%B0%20YEN%C4%B0.pdf', CAST(N'2019-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (724, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM SONU??LARI', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/dc8ec57f-b695-4bd3-9875-a7763b8ee02c/url_icerik/20-21%20E%C4%9Fitim%20%C3%96%C4%9Fretim%20Y%C4%B1l%C4%B1%20G%C3%BCz%20%20Yar%C4%B1y%C4%B1l%C4%B1%20Lisans%C3%BCst%C3%BC%20%C3%96%C4%9Frenci%20Al%C4%B1m%20Ba%C5%9Fvuru%20Sonu%C3%A7lar%C4%B1.pdf', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (725, 1, N'2019-2020 ????RET??M YILI BAHAR YARIYILINDA ENST??T??M??ZE KAYIT OLAN UZAKTAN E????T??M TEZS??Z Y??KSEK L??SANS PROGRAMLARI ????RENC??LER??N??N D??KKAT??NE', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8331', CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (726, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? ????RENC?? ALIM ??N DE??ERLEND??RME SONUCU B??L??M/M??LAKAT SINAVINA KATILACAK ADAYLAR L??STES?? VE SINAV YERLER??', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/9ca57880-4d3f-46ed-89ac-86e474f837f1/url_icerik/B%C4%B0L%C4%B0M%20SINAVINA%20G%C4%B0RECEKLER%C4%B0N%20L%C4%B0STES%C4%B0.pdf', CAST(N'2020-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (727, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI Y??KSEK L??SANS, DOKTORA B??L??M/M??LAKAT SINAV TAR??H?? VE YERLER??', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/b66a3b86-3508-4799-a864-d5fa15b7abdb/url_icerik/B%C4%B0L%C4%B0M-M%C3%9CLAKAT%20SINAV%20TAR%C4%B0H%C4%B0%20VE%20YERLER%C4%B0.pdf', CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (728, 1, N'UZAKTAN ????RET??M ??LE ??LG??L?? SIK??A SORULAN SORULAR', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/48b21fa3-b3b4-40f3-a69e-beac1c08e069/url_icerik/SIKCA%20SORULAN%20SORULAR.pdf', CAST(N'2020-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (729, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILINDA L??SANS??ST?? PROGRAMLARA BA??VURACAK ADAYLARIN D??KKAT??NE', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8186', CAST(N'2020-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (730, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI TEZL??/TEZS??Z/UZAKTAN TEZS??Z VE DOKTORA ????RENC?? ALIM ??LANI', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/34f33a7e-45a4-4df5-8243-cde9924d4a41/url_icerik/ilan%20metni.pdf', CAST(N'2020-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (731, 1, N'DERS KAYDI YAPAN ????RENC??LER??M??Z??N D??KKAT??NE', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8355', CAST(N'2020-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (732, 1, N'2020-2021 E????T??M-????RET??M YILI DERS KAYIT ????LEMLER??', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8369', CAST(N'2020-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (733, 1, N'Spor Bilimleri Fak??ltesi ??zel Yetenek S??nav?? Kay??t Hakk?? Kazanan Adaylar (6. Yedek Liste)', N'https://sporbilim.gop.edu.tr/depo/menuler/birim_11925/duyurular_198/091282a0-9cd7-4821-98d2-103cfe03d59e/url_icerik/6.%20yedek.pdf', CAST(N'2020-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (734, 1, N'S??rekli ??????i (So??utma ve ??klimlendirme Teknisyeni) Al??m?? S??zl?? S??nav Sonucu', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8388', CAST(N'2020-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (735, 1, N'UZAKTAN E????T??M TEZS??Z Y??KSEK L??SANS DERSLER?? VE ????RET??M ??YELER??', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/ded96d41-1faa-467b-936f-659cab55031d/url_icerik/UZAKTAN%20%20DERSLER%C4%B0.pdf', CAST(N'2020-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (736, 1, N'Pazar Meslek Y??ksekokulunda Devir Teslim', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8390', CAST(N'2020-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (737, 1, N'Anesteziyoloji ve Reanimasyon Uptodate-ClinicalKey Kullan??c?? E??itim', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8392', CAST(N'2020-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (738, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI ??????N YEDEK L??STEDEN KAYIT HAKKI KAZANAN ????RENC?? L??STES??', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/6082027f-161b-43b7-b5dd-3b2373d9a54d/url_icerik/YEDEK%20L%C4%B0STE.pdf', CAST(N'2020-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (739, 1, N'??ngilizce Yeterlilik S??nav??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8407', CAST(N'2020-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (740, 1, N'Proquest Ekim Ay?? Online E??itimleri', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8410', CAST(N'2020-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (741, 1, N'ProQuest Yazar ??al????tay??: Tez ve Dergi Makaleleri Yazma ??pu??lar??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8409', CAST(N'2020-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (742, 1, N'SEVG??L?? ????RENC??LER, TOG?? A??LES??NE HO?? GELD??N??Z', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8298', CAST(N'2020-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (743, 1, N'DERS KAYITLARI DERSLER??N ????LEN?????? VE SINAVLAR HAKKINDA DUYURU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8415', CAST(N'2020-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (744, 1, N'UZAKTAN E????T??M TEZS??Z Y??KSEK L??SANS PROGRAMLARINDA BO?? KALAN KONTENJANLARA KAYIT HAKKI', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/857539f5-b82a-4035-9f23-3f7a8238aef9/url_icerik/BO%C5%9E.pdf', CAST(N'2020-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (745, 1, N'2020-2021 E????T??M-????RET??M YILI G??Z YARIYILI L??SANS??ST?? DERSLER??N ????LEN???? ??EKL?? HAKKINDA', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8426', CAST(N'2020-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (746, 1, N'2020-2021 E??itim-????retim Y??l?? G??z Yar??y??l?? Uzaktan E??itim Tezsiz Y??ksek Lisans Bo?? Kalan Kontenjanlar', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/857539f5-b82a-4035-9f23-3f7a8238aef9/url_icerik/BO%C5%9E.pdf', CAST(N'2020-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (747, 1, N'AKAGEV ( Akademik Geli??im ve E??itim Veritaban??) Deneme Eri??imi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8431', CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (748, 1, N'WOS Online E??itim Program??', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8432', CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (749, 1, N'??SYM 2020- Kamu Personel Se??me S??nav?? ??n Lisans (2020- KPSS ??n Lisans) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8470', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (750, 1, N'2020-2021 Ek Yerle??tirme Kay??t Duyurusu', N'https://ogr.gop.edu.tr/depo/menuler/birim_10307/duyurular_198/ae61f6ce-b639-4fe8-a5a2-37dafbd704f4/url_icerik/2020-2021%20Yeni%20Kay%C4%B1t%20%C4%B0lan%C4%B1%20-%20Ek%20Kontenjan.pdf', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (751, 1, N'Etkili e-mail g??nderme ipu??lar??', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8472', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (752, 1, N'TARGID 2020 ve UY??K 2020 Kongresi A????l???? Program??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8437', CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (753, 1, N'Uzaktan E??itim Sistemi ????renci K??lavuzu', N'https://bidb.gop.edu.tr/depo/menuler/birim_35/misyon_vizyon_33/html_icerik/files/%C3%96%C4%9Frenci%20K%C4%B1lavuzu.pdf', CAST(N'2020-10-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (754, 1, N'UZAKTAN E????T??M DERS PROGRAMI YAYINLANMI??TIR', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8505', CAST(N'2020-10-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (755, 1, N'UZAKTAN E????T??M DERS PROGRAMI YAYINLANMI??TIR', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8519', CAST(N'2020-10-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (756, 1, N'UYUM HAFTASI DUYURUSU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8522', CAST(N'2020-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (757, 1, N'??ar??amba G??n?? Konserleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8561', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (758, 1, N'A??ILMAYAN UZAKTAN E????T??M TEZS??Z PROGRAMLARIMIZ', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8568', CAST(N'2020-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (759, 1, N'A??ILMAYAN UZAKTAN E????T??M TEZS??Z Y??KSEK L??SANS PROGRAMLARIMIZ', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8568', CAST(N'2020-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (760, 1, N'2020- 2021 E????T??M- ????RET??M G??Z YARIYILI TOG?? MERKEZ?? K??T??PHANES?? (PANDEM?? D??NEM?? UYGULAMARI)', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8572', CAST(N'2020-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (761, 1, N'Uzaktan E??itime Y??nelik ??neriler', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8585', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (762, 1, N'Enstit??m??z Anabilim Dallar??nda 2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l??nda Ger??ekle??tirilecek Olan Uzaktan E??itim Canl?? Ders Programlar??', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8587', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (763, 1, N'Etkili E-mail G??nderme ??pu??lar??', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8472', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (764, 1, N'Uzaktan E??itime Y??nelik ??neriler', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8585', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (765, 1, N'2020-2021 DGS Kay??t Duyurusu', N'https://ogr.gop.edu.tr/depo/menuler/birim_10307/duyurular_198/f5869feb-b964-4a77-b1c6-5c6e57f99b3c/url_icerik/DGS%20Kay%C4%B1t%20Duyurusu.pdf', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (766, 1, N'Proquest Libguide (T??rk??e ) Eri??imi Hakk??nda', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8611', CAST(N'2020-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (767, 1, N'TOG?? ??ar??amba G??n?? Konserleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8612', CAST(N'2020-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (768, 1, N'AK Parti Grup Ba??kanvekili Av. ??zlem Zengin???den Rekt??r??m??ze Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8639', CAST(N'2020-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (769, 1, N'T??rkmenistan Ankara B??y??kel??isi Ishankuli Amanlyev???den Rekt??r??m??ze Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8645', CAST(N'2020-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (770, 1, N'Y??ksek????retim Konsorsiyomu Protokol?? ??mzaland??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8662', CAST(N'2020-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (771, 1, N'Uluslararas?? ????renci 2020 TOG?? Diploma Notu ??le Yerle??tirme 3 / International Student 2020 TOGU Application With Diploma Score 3', N'https://yos.gop.edu.tr/index/duyuru/80/2020-togu-diploma-notu-ile-yerlestirme-3-2020-togu-application-with-diploma-score-3', CAST(N'2020-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (772, 1, N'Y??ksek????retim Konsorsiyomu Protokol?? ??mzaland??', N'https://gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=8662', CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (773, 1, N'Erbaa Yerle??kesinde Fidan Dikim Etkinli??i', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8681', CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (774, 1, N'TOG?? ??ar??amba G??n?? Konserleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8678', CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (775, 1, N'T??rk Sanat M??zi??i Dinletisi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8695', CAST(N'2020-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (776, 1, N'2020-2021 E??itim ve ????retim Y??l?? Enformatik B??l??m?? I. S??n??flar Zorunlu Bilgisayar Dersleri Muafiyet S??nav?? Duyurusu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8712', CAST(N'2020-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (777, 1, N'Teknik ????retmenler ????in M??hendislik Tamamlama Kay??t Duyurusu', N'https://ogr.gop.edu.tr/depo/menuler/birim_10307/duyurular_198/71343681-a69c-426e-82ed-33841a0fd509/url_icerik/M%C3%BChendislik%20Lisans%20Tamamlama.pdf', CAST(N'2020-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (778, 1, N'????retim Eleman?? Al??m ??lan?? (??ncelikli Alan Kapsam??nda) 19.10.2020-06.11.2020', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/0b0d4e50-3afe-4267-b3b2-170e5ccb8a99/url_icerik/2020%20%C4%B0lan%20Metni%20ekim%20(WEB)%C3%96ncelikli%20Alanlar-Hukuk%20Fak%C3%BCltesi%20-%20Kopya.pdf', CAST(N'2020-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (779, 1, N'2020-2021 E??itim ve ????retim Y??l?? ??ngilizce Muafiyet S??nav Duyurusu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8733', CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (780, 1, N'TOG?? T??MER Seminerleri ??kinci Dil Edinimi (Second Language Acquisition)', N'https://tomer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8652', CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (781, 1, N'Legal Online Deneme Eri??imi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8729', CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (782, 1, N'TOG?? ??ar??amba G??n?? Konserleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8678', CAST(N'2020-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (783, 1, N'??SYM 2020- Engelli Kamu Personeli Se??me S??nav?? (2020- EKPSS) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8749', CAST(N'2020-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (784, 1, N'2020-2021 E??itim Ve ????retim Y??l?? Almanca ve Frans??zca Muafiyet S??nav Duyurusu', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8748', CAST(N'2020-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (785, 1, N'Saz Eserleri Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8751', CAST(N'2020-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (786, 1, N'Fak??ltemiz 2. S??n??f ve 3. S??n??f ????rencilerine Y??nelik "Di?? Hekimli??i A????s??ndan Covid19 Tedbirleri" Konulu E??itim Yap??lacakt??r.', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8697', CAST(N'2020-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (787, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8606', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (788, 1, N'Uzaktan E??itim Sistemi ????renci K??lavuzu', N'https://disfak.gop.edu.tr/depo/menuler/birim_10985/duyurular_198/41bdd9f0-7d06-4dd8-88ea-a586e702050b/url_icerik/%C3%96%C4%9Frenci%20K%C4%B1lavuzu.pdf', CAST(N'2020-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (789, 1, N'1. S??n??f ????rencilerimizin Dikkatine - ( 2020-2021 E??itim ve ????retim Y??l?? Uyum E??itimi )', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8570', CAST(N'2020-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (790, 1, N'Fak??ltemiz 2020-2021 E??itim ????retim Y??l?? G??z Yar??y??l?? Planlamas??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8471', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (791, 1, N'Fak??ltemiz 2020-2021 E??itim ????retim Y??l?? G??z D??nemi Planlamas??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8247', CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (792, 1, N'Dekan??m??z??n 30 A??ustos Zafer Bayram?? Mesaj??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8096', CAST(N'2020-08-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (793, 1, N'????rencilerimiz Yatay Ge??i?? ????lemleri ????in Ders ????erikleri ve M??fredat', N'https://disfak.gop.edu.tr/Icerik.aspx?d=tr-TR&mk=31295&m=ders_bilgi_paketi', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (794, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7681', CAST(N'2020-07-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (795, 1, N'????rencilerimiz S??nav Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7298', CAST(N'2020-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (796, 1, N'????rencilerimiz Final ve B??t??nleme S??nav Tarih ve Saatleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7273', CAST(N'2020-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (797, 1, N'2019 - 2020 E??itim ????retim Y??l?? S??nav Takvim', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7133', CAST(N'2020-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (798, 1, N'Uzaktan e??itim ile s??rd??r??len Bahar yar??y??l?? dersleri ve s??navlar hakk??nda', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=7080', CAST(N'2020-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (799, 1, N'Covid-19 Vir??s?? Hakk??nda Duyuru', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6689', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (800, 1, N'Hasta Randevular?? ??le ??lgili Duyuru', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6687', CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (801, 1, N'Eme??e De??er Projesi', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=6518', CAST(N'2020-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (802, 1, N'1.Tokat Di?? Hekimli??i Ulusal Sempozyumu ve ??nl??k Giyme T??reni', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5650', CAST(N'2019-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (803, 1, N'26 Ekim D??nya Hasta Haklar?? G??n??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5274', CAST(N'2019-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (804, 1, N'Fak??ltemiz 2019-2020 Akademik Kurul Toplant??s??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5154', CAST(N'2019-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (805, 1, N'??ad Encemine ??niversitesi Rekt??r?????nden Ziyaret', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5141', CAST(N'2019-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (806, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5057', CAST(N'2019-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (807, 1, N'Akademik A????l???? Toplant??s??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4990', CAST(N'2019-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (808, 1, N'Kalite De??erlendirmeleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4985', CAST(N'2019-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (809, 1, N'2019-2020 D??nemi Ders Program??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4649', CAST(N'2019-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (810, 1, N'4. ve 5. S??n??f ????rencilerimiz Staj Gruplar??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4591', CAST(N'2019-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (811, 1, N'Dekan??m??z??n 30 A??ustos Zafer Bayram?? Mesaj??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4572', CAST(N'2019-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (812, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4506', CAST(N'2019-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (813, 1, N'2019-2020 Yeni Kay??t Duyurusu', N'https://disfak.gop.edu.tr/depo/menuler/birim_10985/formlar_234/dosya_icerik/8433489/formlar_20190815165027.pdf', CAST(N'2019-08-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (814, 1, N'Dekan??m??z??n Kurban Bayram?? Mesaj??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4467', CAST(N'2019-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (815, 1, N'Dekan??m??z??n 15 Temmuz Demokrasi ve Milli Birlik G??n?? Mesaj??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4223', CAST(N'2019-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (816, 1, N'????rencilerimiz Yatay Ge??i?? ????lemleri ????in Ders ????erikleri ve M??fredat', N'https://disfak.gop.edu.tr/Icerik.aspx?d=tr-TR&mk=31295&m=ders_bilgi_paketi', CAST(N'2019-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (817, 1, N'Fak??ltemiz Dekanl??????nda Devir Teslim', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4050', CAST(N'2019-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (818, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4049', CAST(N'2019-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (819, 1, N'Fak??ltemiz 1. S??n??f ????rencilerine ??nl??k Giydirme T??reni Yap??ld??.', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=2127', CAST(N'2018-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (820, 1, N'????rencilerimiz S??nav Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2080', CAST(N'2018-11-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (821, 1, N'????rencilerimiz ????in Ders Program??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1648', CAST(N'2018-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (822, 1, N'1. S??n??f Oryantasyon E??itim Tamamlanm????t??r.', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1626', CAST(N'2018-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (823, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1620', CAST(N'2018-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (824, 1, N'1. S??n??f Oryantasyon E??itimi', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1619', CAST(N'2018-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (825, 1, N'4. ve 5. S??n??f Staj Gruplar??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1529', CAST(N'2018-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (826, 1, N'Yatay Ge??i?? ????in Ders ????erikleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1228', CAST(N'2018-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (827, 1, N'Fak??ltemiz ??lk Mezunlar??n?? Veriyor', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&id=1202', CAST(N'2018-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (828, 1, N'Te??ekk??r', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=991', CAST(N'2018-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (829, 1, N'Online Randevu Alma Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=850', CAST(N'2018-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (830, 2, N'Seyreltilmi?? Gruplar ile Preklinik E??itimlerimize Devam Ediyoruz', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8728', CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (831, 2, N'Fak??ltemize Giri??ler HES Kodu ile Ger??ekle??tirilmektedir', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8603', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (832, 2, N'???Hastane Enfeksiyonlar??n??n ??nemi ve Kontrol????? ile ???Di?? Hekimli??i A????s??ndan Covid19 Tedbirleri??? Konulu E??itimler Ba??ar??yla Tamamland??.', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8581', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (833, 3, N'Gelece??e Nefes Ol Etkinli??i Kapsam??nda Fidan Dikimi Yap??ld??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=5427', CAST(N'2019-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (834, 3, N'1. S??n??f ????rencilerimiz i??in Oryantasyon E??itimi', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=4618', CAST(N'2019-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (835, 3, N'26 Ekim Hasta Haklar?? G??n??', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2024', CAST(N'2018-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (836, 3, N'Fak??ltemiz ??lk Mezunlar??n?? Veriyor.', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1202', CAST(N'2018-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (837, 3, N'2017-2018 Beyaz ??nl??k Giydirme T??reni', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=883', CAST(N'2017-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (838, 3, N'Down Sendromlu ??ocuklarla E??lenceli Aktiviteler', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=882', CAST(N'2017-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (839, 2, N'????rencilerimizin i??/staj imk??nlar??ndan ve kariyer olanaklar??ndan haberdar olup kolayca ba??vuru yapabilece??i, profesyonel kariyer dan????manl?????? hizmeti alabilece??i "Yetenek Kap??s??" platformu hizmete sunulmu??tur.', N'https://lisansustu.gop.edu.tr/depo/menuler/birim_12112/duyurular_198/0a0be3a9-29fc-4975-9354-205a994ca548/url_icerik/6604a637-4c39-43c7-beac-a11896782aafYetenek%20Kap%C4%B1s%C4%B1%20Platformu_4235624.pdf', CAST(N'2020-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (840, 2, N'Rekt??r??m??zden Senegal Y??ksek????retim, Ara??t??rma ve ??novasyon Bakan??na Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8770', CAST(N'2020-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (841, 2, N'Rekt??r??m??z Prof. Dr. B??nyamin ??ahin''den Senegal Ziyareti', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8768', CAST(N'2020-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (842, 1, N'??SYM 2020- Kamu Personeli Se??me S??nav?? Orta????retim (2020- KPSS Orta????retim) G??revli Tercih ????lemleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8773', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (843, 1, N'Rekt??r ??ahin''den Mevlid Kandili Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8788', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (844, 1, N'Uluslararas?? ????renciler ????in ??ngilizce Muafiyet S??nav?? (English Exemption Exam For International Students)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/d2048b2b-a826-4694-817e-becc370a824a/url_icerik/ULUSLARARASI%20%C3%96%C4%9ERENC%C4%B0LER%20%C4%B0%C3%87%C4%B0N%20%C4%B0NG%C4%B0L%C4%B0ZCE%20MUAF%C4%B0YET%20SINAVI%20(ENGLISH%20EXEMPTION%20EXAM%20FOR%20INTERNATIONAL%20STUDENTS....pdf', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (845, 2, N'29 Ekim Cumhuriyet Bayram?? T??rk Halk M??zi??i Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8784', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (846, 1, N'??SYM 2020- KAMU PERSONEL?? SE??ME SINAVI ORTA????RET??M (2020- KPSS ORTA????RET??M) G??REVL?? TERC??H ????LEMLER??', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8787', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (847, 1, N'Rekt??r ??ahin''den 29 Ekim Cumhuriyet Bayram?? Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8791', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (848, 2, N'??orum ??l Protokol??nden Rekt??r??m??ze Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8803', CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (849, 1, N'22.10.2020 TAR??H??NDE YAPILAN YABANCI D??L (FRANSIZCA) MUAF??YET SINAV SONU?? L??STES??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/a95e9973-1221-4c22-b888-b410e74179a5/url_icerik/22.10.2020%20TAR%C4%B0H%C4%B0NDE%20YAPILAN%20YABANCI%20D%C4%B0L%20(FRANSIZCA)%20MUAF%C4%B0YET%20SINAV%20SONU%C3%87%20L%C4%B0STES%C4%B0.xlsx', CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (850, 1, N'22.10.2020 TAR??H??NDE YAPILAN YABANCI D??L (ALMANCA) MUAF??YET SINAV SONU?? L??STES??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/6fceedeb-a82f-471b-85c9-4616fc1f8647/url_icerik/22.10.2020%20TAR%C4%B0H%C4%B0NDE%20YAPILAN%20YABANCI%20D%C4%B0L%20(ALMANCA)%20MUAF%C4%B0YET%20SINAV%20SONU%C3%87%20L%C4%B0STES%C4%B0.xlsx', CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (851, 1, N'2020-2021 ??NG??L??ZCE MUAF??YET SINAV SONU??LARI 30.10.2020', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/ee4ef55b-7864-41de-bf4b-45264b9fa58d/url_icerik/2020-2021%20%C4%B0NG%C4%B0L%C4%B0ZCE%20MUAF%C4%B0YET%20SINAV%20SONU%C3%87LARI%2030.10.2020.xlsx', CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (852, 1, N'ULUSLARARASI ????RENC??LER ??????N ??NG??L??ZCE MUAF??YET SINAVI (ENGLISH EXEMPTION EXAM FOR INTERNATIONAL STUDENTS)..', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/d2048b2b-a826-4694-817e-becc370a824a/url_icerik/ULUSLARARASI%20%C3%96%C4%9ERENC%C4%B0LER%20%C4%B0%C3%87%C4%B0N%20%C4%B0NG%C4%B0L%C4%B0ZCE%20MUAF%C4%B0YET%20SINAVI%20(ENGLISH%20EXEMPTION%20EXAM%20FOR%20INTERNATIONAL%20STUDENTS....pdf', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (853, 1, N'Online ??ngilizce Yeterlik S??nav?? Y??nergesi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/dbd458af-46f0-42cc-9ede-b1247ff4aee1/url_icerik/Online%20%C4%B0ngilizce%20Yeterlik%20S%C4%B1nav%C4%B1%20Y%C3%B6nergesi.pdf', CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (854, 1, N'Canl?? Derslerle ??lgili Duyuru', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8723', CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (855, 1, N'2020-2021 G??z D??nemi Program K??lavuzu', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/9e08148e-1271-4513-8bb4-35d4964eb202/url_icerik/2020-2021%20G%C3%BCz%20D%C3%B6nemi%20Program%20K%C4%B1lavuzu.pdf', CAST(N'2020-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (856, 1, N'2020-2021 Ek Kontenjan ??ngilizce Yeterlik S??nav?? Hakk??nda', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/0292b91b-60a7-4765-b201-bf0110fbd12b/url_icerik/2020-2021%20Ek%20Kontenjan%20%C4%B0ngilizce%20Yeterlik%20S%C4%B1nav%C4%B1%20Hakk%C4%B1nda..pdf', CAST(N'2020-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (857, 1, N'Online ??ngilizce Yeterlik S??nav?? Y??nergesi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/9049e8b7-9aaa-4f2e-b728-3ac24a61fd08/url_icerik/Online%20%C4%B0ngilizce%20Yeterlik%20S%C4%B1nav%C4%B1%20Y%C3%B6nergesi.pdf', CAST(N'2020-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (858, 1, N'Haz??rl??k Dersleriyle ??lgili Duyuru(yeni)', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8656', CAST(N'2020-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (859, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Kitaplar??(yeni)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/c6f3db0d-4726-48d1-8ce6-0e80a97ad52a/url_icerik/2020-2021%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Ders%20Kitaplar%C4%B1.pdf', CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (860, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Programlar?? (canl??)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/11cf1cac-9e8b-43ce-9bb8-31a82c16827d/url_icerik/Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Canl%C4%B1%20Ders%20Programlar%C4%B1_son_hali.pdf', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (861, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Programlar?? (canl??)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/9e865e54-bdae-4fc9-82c8-9b1a5a2c4938/url_icerik/Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Canl%C4%B1%20Ders%20Programlar%C4%B1.pdf', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (862, 1, N'2020-2021 HAZIRLIK SINIF L??STELER?? (yeni)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/ccd36198-7da6-4d79-8fc4-8f3966b13592/url_icerik/2020-2021%20HAZIRLIK%20SINIF%20L%C4%B0STELER%C4%B0.xlsx', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (863, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Programlar?? (yeni)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/6dac6c71-1d0a-4869-83eb-a9b4e4c045f6/url_icerik/2020-2021%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Ders%20Programlar%C4%B1.pdf', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (864, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Programlar??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/27d0fa85-e7f9-4e81-8b4d-d0316fc2bdcf/url_icerik/2020-2021%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Ders%20Programlar%C4%B1.pdf', CAST(N'2020-10-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (865, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Kitaplar??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/9c0c522f-30c4-419b-85ca-f76448acaa07/url_icerik/2020-2021%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Ders%20Kitaplar%C4%B1.pdf', CAST(N'2020-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (866, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Kitaplar??...', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/00ebabcc-b160-409b-a261-743f23184cd3/url_icerik/2020-2021%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Ders%20Kitaplar%C4%B1.pdf', CAST(N'2020-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (867, 1, N'2020-2021 ??ngilizce Haz??rl??k S??n??flar?? Ders Programlar??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/3ef8500e-bddb-419a-b1aa-6d2270f44039/url_icerik/2020-2021%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Ders%20Programlar%C4%B1.pdf', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (868, 1, N'Uyum Haftas?? Hakk??nda', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8461', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (869, 1, N'2020-2021 Haz??rl??k S??n??f Listeleri', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/489ffe44-1694-4bbe-a71d-9d81b15b43ad/url_icerik/2020-2021%20HAZIRLIK%20SINIF%20L%C4%B0STELER%C4%B0.xlsx', CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (870, 1, N'2020-2021 ??ngilizce Yeterlik S??nav?? Sonu??lar??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/30eba1c9-3408-406a-942b-ca814cbf036e/url_icerik/2020-2021%20%C4%B0ngilizce%20Yeterlik%20S%C4%B1nav%20Sonucu.xlsx', CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (871, 1, N'Online ??ngilizce Yeterlik S??nav?? Y??nergesi ve S??nav Linki', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8405', CAST(N'2020-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (872, 1, N'Online ??ngilizce Yeterlik S??nav?? Y??nergesi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/28785cdd-1a6a-4caa-9e39-9979acd90d98/url_icerik/Online%20%C4%B0ngilizce%20Yeterlik%20S%C4%B1nav%C4%B1%20Y%C3%B6nergesi.pdf', CAST(N'2020-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (873, 1, N'2020-2021 ??ngilizce Yeterlik (Zorunlu Haz??rl??k Muafiyet) S??nav??', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8278', CAST(N'2020-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (874, 1, N'Tokat Gaziosmanpa??a ??niversitesi Yabanc?? Diller Y??ksekokulu Kararlar??', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8272', CAST(N'2020-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (875, 1, N'Zorunlu Haz??rl??k S??n??flar?? Ba??vurusu Hakk??nda', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8222', CAST(N'2020-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (876, 1, N'2020-2021 Zorunlu-??ste??e Ba??l?? ??ngilizce Haz??rl??k S??n??flar?? Ba??vuru Dilek??eleri', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8119', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (877, 1, N'4. 2020-2021 ??ste??e Ba??l?? ??ngilizce Haz??rl??k S??n??f?? Ba??vuru Dilek??esi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/702be5a4-f934-411f-8379-692d337a5aca/url_icerik/4.%202020-2021%20%C4%B0ste%C4%9Fe%20Ba%C4%9Fl%C4%B1%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1f%C4%B1%20Ba%C5%9Fvuru%20Dilek%C3%A7esi.doc', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (878, 1, N'3. 2020-2021 Yeni Kay??t ????renciler ????in Haz??rl??k ve Yeterlik S??nav?? Ba??vuru Dilek??esi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/15f7dc4d-9a78-435c-8e6e-2e51743e5328/url_icerik/3.%202020-2021%20Yeni%20Kay%C4%B1t%20%C3%96%C4%9Frenciler%20%C4%B0%C3%A7in%20Haz%C4%B1rl%C4%B1k%20ve%20Yeterlik%20S%C4%B1nav%C4%B1%20Ba%C5%9Fvuru%20Dilek%C3%A7esi.doc', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (879, 1, N'2. 2020-2021 Zorunlu ??ngilizce Haz??rl??k Program??nda Ba??ar??s??z Olmu?? ????renciler ????in Haz??rl??k S??n??f?? Ba??vuru Dilek??esi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/818f3484-a64b-4933-b1b5-7b0295fbf62d/url_icerik/2.%202020-2021%20%20Zorunlu%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20Program%C4%B1nda%20Ba%C5%9Far%C4%B1s%C4%B1z%20Olmu%C5%9F%20%C3%96%C4%9Frenciler%20%C4%B0%C3%A7in%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1f%C4%B1%20Ba%C5%9Fvuru%20Dilek%C3%A7esi.doc', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (880, 1, N'1. 2020-2021 Zorunlu ??ngilizce Haz??rl??k Program??nda Ba??ar??s??z Olmu?? ????renciler ????in Yeterlik S??nav?? Ba??vuru Dilek??esi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/1848a1fe-f2d4-4e81-be14-69f98eae52ad/url_icerik/1.%202020-2021%20%20Zorunlu%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20Program%C4%B1nda%20Ba%C5%9Far%C4%B1s%C4%B1z%20Olmu%C5%9F%20%C3%96%C4%9Frenciler%20%C4%B0%C3%A7in%20Yeterlik%20S%C4%B1nav%C4%B1%20Ba%C5%9Fvuru%20Dilek%C3%A7esi.doc', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (881, 1, N'2020-2021 Zorunlu-??ste??e Ba??l?? ??ngilizce Haz??rl??k S??n??flar?? Ba??vuru Dilek??eleri', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8111', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (882, 1, N'Zorunlu Haz??rl??k S??n??flar?? ??ngilizce Yeterlik S??nav?? Hakk??nda', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8108', CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (883, 1, N'2020-2021 Akademik Y??l?? Haz??rl??k S??n??flar?? Genel Bilgilendirme Notlar??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/ea2a121e-551c-4630-955e-729e05ec0a73/url_icerik/2020-2021%20Akademik%20Y%C4%B1l%C4%B1%20Haz%C4%B1rl%C4%B1k%20S%C4%B1n%C4%B1flar%C4%B1%20Genel%20Bilgilendirme%20Notlar%C4%B1.pdf', CAST(N'2020-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (884, 1, N'Tokat Gaziosmanpa??a ??niversitesi Yabanc?? Diller Y??ksekokulu 2019-2020 Bahar D??nemi Haz??rl??k S??n??flar?? Final S??nav?? Plan??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/75b67a65-e3c4-473e-9558-7f8ba01dfa72/url_icerik/2019-2020%20Bahar%20D%C3%B6nemi%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20Final%20S%C4%B1nav%C4%B1.pdf', CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (885, 1, N'Revize Edilen 2019-2020 Bahar Yar??y??l?? ??niversite Se??meli Dersleri S??nav Program??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/0ac968eb-7877-43ee-9f69-24f359fe2ded/url_icerik/REV%C4%B0ZE%20ED%C4%B0LEN%202019.pdf', CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (886, 1, N'??ngilizce Haz??rl??k S??n??flar?? Mazeret S??nav?? Duyurusu', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/5577bc2a-73c2-4aaa-ba7f-f192ff5fa663/url_icerik/%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20Telafi%20S%C4%B1nav%C4%B1.pdf', CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (887, 1, N'TOG?? Yabanc?? Diller Y??ksekokulu 2019-2020 Bahar D??nemi Haz??rl??k S??n??flar?? Ara S??nav Plan??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/a4392433-b78e-4875-99b0-56892fe528a5/url_icerik/2019-2020%20Bahar%20D%C3%B6nemi%20%C4%B0ngilizce%20Haz%C4%B1rl%C4%B1k%20Ara%20S%C4%B1nav%20Duyuru.pdf', CAST(N'2020-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (888, 1, N'2019-2020 E??itim ????retim Y??l?? Haz??rl??k S??n??flar?? Bahar D??nemi 1. haftadan 3. Haftaya Devams??zl??k Listesi (Attendance List for Prep Classes from Week 1 to Week 3)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/5f7df85e-3e5c-4765-aecc-50129b21ed9b/url_icerik/Attendance%20List%20From%20Week%201%20To%20Week%203.xlsx', CAST(N'2020-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (889, 1, N'2019-2020 E??itim ????retim Y??l?? Haz??rl??k S??n??flar?? Bahar D??nemi Ders Program??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/51a0aafc-2be9-42b6-ad5d-0eb0d592a712/url_icerik/Haz%C4%B1rl%C4%B1k%20Ders%20Program%C4%B1%20En%20Son.pdf', CAST(N'2020-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (890, 1, N'2019-2020 E??itim ????retim Y??l?? Bahar D??nemi Haz??rl??k S??n??flar?? S??nav Takvimi (2019-2020 Academic Year Spring Term Exam Schedule For Prep Classes)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/c321d88d-b8e0-4b2f-ab55-8820fdc708ad/url_icerik/bahar%20d%C3%B6nemi%20s%C4%B1nav%20takvimi%20(2).pdf', CAST(N'2020-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (891, 1, N'2019-2020 E??itim ????retim Y??l?? Haz??rl??k S??n??flar?? G??z D??nemi Sonu Devams??zl??k Listeleri', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/905dac2d-15df-4188-8477-c989edbf0fb4/url_icerik/haz%C4%B1rl%C4%B1k%20s%C4%B1n%C4%B1flar%C4%B1%20d%C3%B6nem%20sonu%20devams%C4%B1zl%C4%B1k%20listeleri.xlsx', CAST(N'2020-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (892, 1, N'??ngilizce Film G??nleri Duyurusu', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/2570eec5-6f30-418f-9308-7e01dcd0f4b8/url_icerik/film%20g%C3%BCnleri.docx', CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (893, 1, N'??ngilizce Konu??ma Kul??b?? Duyurusu', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/74894ae4-8baf-4ebc-8223-a31293561f86/url_icerik/KONU%C5%9EMA%20KUL%C3%9CB%C3%9C.docx', CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (894, 1, N'2019-2020 E??itim ????retim Y??l?? Bahar D??nemi UZEM (Uzaktan E??itim) ????renci Dan????ma Saatleri Program??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/bb6ead93-168c-4514-9f5f-4860b4439977/url_icerik/UZEM%20%C3%96%C4%9Frenci%20Dan%C4%B1%C5%9Fma%20Saatleri%20%C5%9Fubat%202020.docx', CAST(N'2020-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (895, 1, N'2019-2020 E??itim ????retim Y??l?? Haz??rl??k S??n??flar?? Bahar D??nemi ????renci Dan????ma Saatleri Program??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/56278fd5-4dac-4a4a-9cef-4b9f78eb9148/url_icerik/haz%C4%B1rl%C4%B1k%20s%C4%B1n%C4%B1flar%C4%B1%20dan%C4%B1%C5%9Fma%20saatleri%20(1).docx', CAST(N'2020-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (896, 1, N'TOG?? Yabanc?? Dil Haz??rl??k E??itim-????retim ve S??nav Y??nergesi (G??ncel)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/5c01fb2c-fd0e-4294-9854-ee907d0a91ac/url_icerik/yabanc%C4%B1%20diller%20y%C3%B6nerge%20(17.01.2020).pdf', CAST(N'2020-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (897, 1, N'??ngilizce Yeterlik S??nav Sonu??lar?? (English Proficiency Exam Results)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/ca21a2a2-79e8-4adb-9588-08743d2eb57b/url_icerik/07.01.2020%20YETERL%C4%B0K%20SONU%C3%87%20L%C4%B0STES%C4%B0.xlsx', CAST(N'2020-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (898, 1, N'2019-2020 E??itim ????retim Y??l?? G??z ve Bahar D??nemi Uzaktan E??itim ??ngilizce Ders Notlar??', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/8ab99e50-e449-4c9e-beb8-27942e63c62e/url_icerik/UZAKTAN_E%C4%9E%C4%B0T%C4%B0M_%C4%B0NG%C4%B0L%C4%B0ZCE_DERS_NOTLARI_hdr%20(5).pdf', CAST(N'2020-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (899, 2, N'Tabiatla Ba?? Ba??a Hikaye Okuma Etkinli??i Ger??ekle??tirildi', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3509', CAST(N'2019-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (900, 2, N'Haz??rl??k S??n??flar??yla G??steri Etkinli??i Ger??ekle??tirildi', N'http://youtu.be/j5Wye3urpBQ', CAST(N'2019-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (901, 2, N'2018-2019 E??itim ????retim Y??l?? Haz??rl??k s??n??f?? ????rencilerimizle etkinlik', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3156', CAST(N'2019-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (902, 2, N'Yabanc?? Diller Y??ksekokulu Etkinli??i', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=3086', CAST(N'2019-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (903, 2, N'Yabanc?? Diller Y??ksekokulu Veda Yeme??i', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2954', CAST(N'2019-03-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (904, 2, N'2018-2019 E??itim ????retim Y??l?? Haz??rl??k s??n??f?? ????rencilerimizle sinema g??n??', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2120', CAST(N'2018-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (905, 2, N'2018-2019 E??itim ????retim Y??l?? Zorunlu ve ??ste??e ba??l?? ??ngilizce ve T??rk??e Haz??rl??k s??n??f?? ????rencilerimizle Zile gezisi', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2059', CAST(N'2018-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (906, 2, N'2018-2019 E??itim ????retim Y??l?? ??ste??e ba??l?? T??rk??e Haz??rl??k s??n??f?? Yabanc?? uyruklu ????rencilerimizle k??lt??rel ve sosyal gezi d??zenlenmi??tir', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2058', CAST(N'2018-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (907, 2, N'2018-2019 E??itim ????retim Y??l?? ??ste??e ba??l?? T??rk??e Haz??rl??k s??n??f?? Yabanc?? uyruklu ????rencilerimizle oryantasyon gezisi', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=2000', CAST(N'2018-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (908, 2, N'Yabanc?? Diller Y??ksekokulundan bir proje', N'https://ydyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=1912', CAST(N'2018-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (909, 1, N'Temel ??nsan Kaynaklar?? E??itimi', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7536', CAST(N'2020-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (910, 1, N'Kariyer Merkezlerinin Gelece??i ??al????tay??', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8806', CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (911, 1, N'Ara??t??rma G??revlisi Al??m ??lan?? (??ncelikli Alan) / 02-16.11.2020', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/dbe6f17a-ae8b-4633-9bf9-df56fb6d5c86/url_icerik/2020%20%C4%B0lan%20Metni%20(kas%C4%B1m-web)%20%C3%96ncelikli%20Alanlar%20%C4%B0lan%20Metni.pdf', CAST(N'2020-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (912, 3, N'Kariyer Merkezlerinin Gelece??i ??al????tay??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8822', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (913, 1, N'Uluslararas?? ????renci 2020 TOG?? Diploma Notu ile Yerle??tirme 4 / International Student 2020 TOGU Application With Diploma Score 4', N'https://yos.gop.edu.tr/index/duyuru/82/2020-togu-diploma-notu-ile-yerlestirme-4-2020-togu-application-with-diploma-score-4', CAST(N'2020-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (914, 1, N'S??zle??meli Personel Al??m ??lan?? (03 -18 Kas??m 2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/9b91f2f5-46ee-4f1e-865d-dae5858e0d94/url_icerik/8---4B%20Al%C4%B1m%20%C4%B0lan%C4%B1%20%C3%BCniversitemi%C5%9Fz%20web%20%202020-2.pdf', CAST(N'2020-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (915, 1, N'??NG??L??ZCE MUAF??YET SINAVI SONU??LARI', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8832', CAST(N'2020-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (916, 1, N'????retim ??yesi Al??m ??lan?? (05-19 Kas??m 2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/028ef8b2-170b-486c-9344-7c03351e3ce6/url_icerik/2020%20%C4%B0lan%20Metni%20(kas%C4%B1m-%C3%B6%C4%9Fretim%20%C3%BCye)(resmi%20gazete).pdf', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (917, 1, N'T??B??TAK 1512 Bireysel Gen?? Giri??im (B??GG) Sermaye Deste??i Program??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8835', CAST(N'2020-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (918, 1, N'YABANCI UYRUKLU ????RENC??LER ??????N YAPILAN ??NG??L??ZCE YETERL??K SINAVI SONU??LARI (English Proficiency Exam Results) [30.10.2020]', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/6dbc62c1-22ed-47a4-82ca-5816703390f6/url_icerik/30.10.2020%20TAR%C4%B0H%C4%B0NDE%20YABANCI%20UYRUKLU%20%C3%96%C4%9ERENC%C4%B0LER%20%C4%B0%C3%87%C4%B0N%20YAPILAN%20YETERL%C4%B0K%20SINAV%20SONU%C3%87LARI.xlsx', CAST(N'2020-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (919, 1, N'Akademik Yazma E??itimi', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8851', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (924, 1, N'Satran?? Kursu', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8850', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (925, 1, N'OKA destekli ???Ba??c??l??kta Organik Tar??m ve ??yi Tar??m Uygulamalar????? Projesi Tamamland??', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8849', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (926, 1, N'OKA destekli ???Ger??eklik Terapisi ile Problem ????zme Yakla????m?? E??itimi??? Projesi Tamamland??', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8848', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (927, 1, N'OKA destekli ???Sosyal Hizmet Merkez M??d??rl?????? Merkez Elemanlar??n??n Otizmde G????lendirilmesi??? Projesi Tamamland??', N'https://togusem.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8847', CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (928, 2, N'Kariyer Merkezlerinin Gelece??i ??al????tay??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8855', CAST(N'2020-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (929, 2, N'????rencimizden Alt??n Madalya', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8856', CAST(N'2020-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (930, 1, N'S??zle??meli Personel Al??m ??lan?? (03 -18 Kas??m 2020)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/9b91f2f5-46ee-4f1e-865d-dae5858e0d94/url_icerik/4---4B%20Al%C4%B1m%20%C4%B0lan%C4%B1%20%C3%BCniversitemiz%20web%20%202020-2.pdf', CAST(N'2020-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (931, 3, N'Vefat??n??n 82. Y??l D??n??m??''nde Mustafa Kemal Atat??rk''?? Anlamak', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8858', CAST(N'2020-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (932, 1, N'Online Randevu Alma (Video Anlat??ml??)', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8859', CAST(N'2020-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (933, 1, N'Rekt??r ??ahin''den 10 Kas??m Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8868', CAST(N'2020-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (934, 2, N'10 Kas??m Atat??rk????? Anma T??reni ve Konferans', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8877', CAST(N'2020-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (935, 3, N'??ar??amba G??n?? Konserleri (Atat??rk''??n Sevdi??i ??ark??lar)', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8866', CAST(N'2020-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (936, 1, N'E-B??lten 2. Say??m??z Yay??nda', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7536', CAST(N'2020-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (937, 1, N'Ehl-i Kariyer Yurtd?????? E??itimi', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=7536', CAST(N'2020-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (938, 1, N'Kariyer Merkezlerinin Gelece??i ??al????tay?? Ger??ekle??tirildi', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8869', CAST(N'2020-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (939, 1, N'2020-2021 Fall Term Exam Schedule- G??z D??nemi S??nav Takvimi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/e3878954-e87c-4a05-88cd-504b2b2828bc/url_icerik/2020-2021%20Fall%20Term%20Exam%20Schedule-%20G%C3%BCz%20D%C3%B6nemi%20S%C4%B1nav%20Takvimi.pdf', CAST(N'2020-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (940, 2, N'Atat??rk?????n Sevdi??i ??ark??lar Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8887', CAST(N'2020-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (941, 2, N'Rekt??r ??ahin???den Cumhuriyet ??niversitesi ve Sivas Bilim ve Teknoloji ??niversitesi Rekt??rlerine Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8892', CAST(N'2020-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (942, 1, N'Etkili E-mail G??nderme ??pu??lar??', N'https://pdrmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8472', CAST(N'2020-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (943, 1, N'Online Quiz Y??nergesi', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/6b2487ea-a459-4410-baf4-14cbdd12c059/url_icerik/Online%20Quiz%20Y%C3%B6nerge.pdf', CAST(N'2020-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (944, 1, N'Ara??t??rma G??revlisi Kadrolar?? ??n De??erlendirme Sonu??lar?? (??ncelikli Alan-Hukuk)', N'https://personel.gop.edu.tr/depo/menuler/birim_10308/duyurular_198/a402de05-dcba-49f3-934d-1c2e9710bdf1/url_icerik/T%C3%9CM%20WEB.pdf', CAST(N'2020-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (945, 1, N'Yeni D??nem ??al????ma Saatlerimiz', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8903', CAST(N'2020-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (946, 1, N'YURTDI??I STAJ HAREKETL??L?????? ??????N YEN?? B??R PROJE: OSMANGAZ?? KONSORS??YUMU', N'https://erasmus.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8906', CAST(N'2020-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (947, 1, N'K??t??phane ve Bilgisayar Salonlar?? Kullan??m??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8908', CAST(N'2020-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (948, 1, N'S??zle??meli Personel Yerle??tirme Sonu??lar??', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8935', CAST(N'2020-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (949, 1, N'Ara??t??rma G??revlisi Kadrolar?? ??n De??erlendirme Sonu??lar?? (??ncelikli Alan)', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8930', CAST(N'2020-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (950, 1, N'K??t??phanemiz Okuma ve Bilgisayar Salonlar?? Kullan??m??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8908', CAST(N'2020-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (951, 2, N'Senegal Heyetinden ??niversitemize Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8943', CAST(N'2020-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (952, 2, N'Rekt??r ??ahin''e Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8916', CAST(N'2020-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (953, 2, N'Saz Eserleri Konseri 2', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8914', CAST(N'2020-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (954, 2, N'Rekt??r ??ahin???den Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8913', CAST(N'2020-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (955, 3, N'??ar??amba G??n?? Konserleri ( Saz Eserleri Konseri 2 )', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8909', CAST(N'2020-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (956, 1, N'AKADEM??K YAYINCILIK VE ARA??TIRMA ETK??NL??????N??N ARTIRILMAS', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8928', CAST(N'2020-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (957, 1, N'Ara??t??rma G??revlisi Kadrolar?? Giri?? S??nav?? Sonu??lar?? (??ncelikli Alan-Hukuk)', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8956', CAST(N'2020-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (958, 1, N'Rekt??r ??ahin''den 24 Kas??m ????retmenler G??n?? Mesaj??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8957', CAST(N'2020-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (959, 1, N'V??ZE SINAVLARI DUYURUSU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8965', CAST(N'2020-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (960, 1, N'????rencilerimizin E??itimi ve S??navlar?? Hakk??nda Bilgilendirme', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8950', CAST(N'2020-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (961, 1, N'2020-2021 G??z D??nemi 1. Ara S??nav Hakk??nda', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/13748226-20a1-4568-9659-46caab1a2ca9/url_icerik/2020-2021%20G%C3%BCz%20D%C3%B6nemi%201.%20Ara%20S%C4%B1nav%20Hakk%C4%B1nda.pdf', CAST(N'2020-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (962, 2, N'E??itim Fak??ltemizden 24 Kas??m ????retmenler G??n?? Klibi', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8972', CAST(N'2020-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (963, 2, N'E??itim Fak??ltemiz ??ehit ????retmenleri Unutmad??', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8985', CAST(N'2020-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (964, 2, N'E??itim Fak??ltesi G??zel Sanatlar B??l??m?? M??zik E??itimi Anabilim Dal?? 24 Kas??m ????retmenler G??n?? Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8984', CAST(N'2020-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (965, 1, N'ARDEB Bilgilendirme Etkinli??i', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8998', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (966, 3, N'??ar??amba G??n?? Konserleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=8999', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (967, 1, N'American Academy of Pediatrics (AAP) Deneme Eri??imi', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=9001', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (968, 1, N'ARDEB ve TEYDEB Bilgilendirme Etkinlikleri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9007', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (969, 1, N'2020-2021 E??itim-????retim Y??l?? G??z Yar??y??l?? Ara S??navlar', N'https://ogr.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=8952', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (970, 2, N'Klasik Gitar Konseri', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9023', CAST(N'2020-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (971, 1, N'ZORUNLU ORTAK DERSLER V??ZE SINAVLARI DUYURUSU', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9021', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (972, 2, N'??HAGER Tak??m??ndan Rekt??r ??ahin???e Ziyaret', N'https://www.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9035', CAST(N'2020-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (973, 1, N'Atat??rk K??lt??r, Dil ve Tarih Y??ksek Kurumu 2021 Y??l?? E??itim Bursu Ba??vurular??', N'https://karmer.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=9041', CAST(N'2020-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (974, 1, N'L??SANS??ST?? DERSLER??N SINAVLARI ??LE ??LG??L?? DUYURU', N'https://lisansustu.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9045', CAST(N'2020-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (975, 1, N'2020-2021 G??z D??nemi Ara S??nav I (yeni duyuru)', N'https://ydyo.gop.edu.tr/depo/menuler/birim_11235/duyurular_198/7b2e3ddb-d2fe-4df8-8263-ef64d28b91ce/url_icerik/2020-2021%20G%C3%BCz%20D%C3%B6nemi%20Ara%20S%C4%B1nav%20I.pdf', CAST(N'2020-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (976, 1, N'2020-2021 E??itim ????retim D??nemi - ????rencilerimizin S??nav Tarihleri', N'https://disfak.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9049', CAST(N'2020-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (977, 1, N'Ara??t??rma G??revlisi Kadrolar?? Giri?? S??nav?? Sonu??lar?? (??ncelikli Alan)', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=9056', CAST(N'2020-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (978, 1, N'2020-2 S??zle??meli Personel Yedek Yerle??tirme Sonu??lar?? (1)', N'https://personel.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=9059', CAST(N'2020-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (979, 1, N'Y??KSEKOKULUMUZDA G??REV DE????????KL??????', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9069', CAST(N'2020-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (980, 1, N'MESLEK Y??KSEKOKULUMUZDA G??REV DE????????KL??????', N'https://niksarmyo.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=30542&id=9068', CAST(N'2020-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (981, 1, N'??ntihal.Net 2021 Y??l?? Aboneli??imiz Ba??lam????t??r', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=9073', CAST(N'2020-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Announcements] ([PkId], [TypeId], [Text], [Url], [Date]) VALUES (982, 1, N'AKAGEV 2021 Aboneli??miz Ba??lam????t??r.', N'https://kutup.gop.edu.tr/duyuruDetay.aspx?d=tr-TR&m=duyuru_detay&mk=36044&id=9071', CAST(N'2020-12-02T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Announcements] OFF
GO
SET IDENTITY_INSERT [dbo].[AnnouncementTypes] ON 
GO
INSERT [dbo].[AnnouncementTypes] ([PkId], [Name]) VALUES (1, N'Duyuru')
GO
INSERT [dbo].[AnnouncementTypes] ([PkId], [Name]) VALUES (2, N'Haber')
GO
INSERT [dbo].[AnnouncementTypes] ([PkId], [Name]) VALUES (3, N'Etkinlik')
GO
SET IDENTITY_INSERT [dbo].[AnnouncementTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Emails] ON 
GO
INSERT [dbo].[Emails] ([PkId], [EmailAddress]) VALUES (1, N'ahmedburak@hotmail.com')
GO
SET IDENTITY_INSERT [dbo].[Emails] OFF
GO
SET IDENTITY_INSERT [dbo].[ExceptionLogs] ON 
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (1, N'Object reference not set to an instance of an object.', N'', N'', N'   at FindMyNumber.Gop.Program.<Main>d__3.MoveNext() in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\Program.cs:line 48', CAST(N'2020-11-14T05:08:22.883' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (2, N'A exception with a null response was thrown sending an HTTP request to the remote WebDriver server for URL http://localhost:49498/session/29f4dd90-2e8a-11eb-a760-150c3fae07b6/element/:wdc:1606245682103/click. The status of the exception was ReceiveFailure, and the message was: The underlying connection was closed: An unexpected error occurred on a receive.', N'T??klama hatas??!', N'System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a receive. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host
   at System.Net.Sockets.Socket.Receive(Byte[] buffer, Int32 offset, Int32 size, SocketFlags socketFlags)
   at System.Net.Sockets.NetworkStream.Read(Byte[] buffer, Int32 offset, Int32 size)
   --- End of inner exception stack trace ---
   at System.Net.Sockets.NetworkStream.Read(Byte[] buffer, Int32 offset, Int32 size)
   at System.Net.PooledStream.Read(Byte[] buffer, Int32 offset, Int32 size)
   at System.Net.Connection.SyncRead(HttpWebRequest request, Boolean userRetrievedStream, Boolean probeRead)
   --- End of inner exception stack trace ---
   at System.Net.HttpWebRequest.GetResponse()
   at OpenQA.Selenium.Remote.HttpCommandExecutor.CreateResponse(WebRequest request)', N'   at OpenQA.Selenium.Remote.HttpCommandExecutor.CreateResponse(WebRequest request)
   at OpenQA.Selenium.Remote.HttpCommandExecutor.Execute(Command commandToExecute)
   at OpenQA.Selenium.Remote.DriverServiceCommandExecutor.Execute(Command commandToExecute)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebElement.Click()
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 195', CAST(N'2020-11-24T22:21:22.170' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (3, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(1) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:57877"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(1) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/3eda7280-2f1e-11eb-8746-c55d09c51e19/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-25T16:01:03.027' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (4, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(2) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:57877"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(2) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/3eda7280-2f1e-11eb-8746-c55d09c51e19/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-25T16:01:13.737' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (5, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(3) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:57877"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(3) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/3eda7280-2f1e-11eb-8746-c55d09c51e19/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-25T16:01:24.347' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (6, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(1) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:57877"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(1) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/3eda7280-2f1e-11eb-8746-c55d09c51e19/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-25T16:01:35.037' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (7, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(1) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:49208"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(1) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/34207e50-2f61-11eb-be9f-8be905a32941/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-26T00:00:21.210' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (8, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(2) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:49208"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(2) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/34207e50-2f61-11eb-be9f-8be905a32941/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-26T00:00:31.957' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (9, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(1) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:51339"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(1) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/5e807a50-302a-11eb-bfef-a9dc9e482603/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-27T00:00:21.423' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (10, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(1) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:51303"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(1) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/30a2cbc0-307e-11eb-b33b-ed06463dd6c6/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-27T10:01:35.313' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (11, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(1) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:58437"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(1) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/dd6c8d10-3285-11eb-ac70-534fca641db0/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-30T00:00:20.673' AS DateTime))
GO
INSERT [dbo].[ExceptionLogs] ([PkId], [Message], [SpecialMessage], [InnerException], [StackTrace], [ExceptionDateTime]) VALUES (12, N'{"errorMessage":"Unable to find element with css selector ''#duyurutabnav > li:nth-child(2) > a''","request":{"headers":{"Accept":"application/json, image/png","Connection":"Close","Content-Length":"70","Content-Type":"application/json;charset=utf-8","Host":"localhost:58437"},"httpVersion":"1.1","method":"POST","post":"{\"using\":\"css selector\",\"value\":\"#duyurutabnav > li:nth-child(2) > a\"}","url":"/element","urlParsed":{"anchor":"","query":"","file":"element","directory":"/","path":"/element","relative":"/element","port":"","host":"","password":"","user":"","userInfo":"","authority":"","protocol":"","source":"/element","queryKey":{},"chunks":["element"]},"urlOriginal":"/session/dd6c8d10-3285-11eb-ac70-534fca641db0/element"}}', N'T??klama hatas??!', N'', N'   at OpenQA.Selenium.Remote.RemoteWebDriver.UnpackAndThrowOnError(Response errorResponse)
   at OpenQA.Selenium.Remote.RemoteWebDriver.Execute(String driverCommandToExecute, Dictionary`2 parameters)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(String mechanism, String value)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElementByCssSelector(String cssSelector)
   at OpenQA.Selenium.By.<>c__DisplayClass1e.<CssSelector>b__1c(ISearchContext context)
   at OpenQA.Selenium.By.FindElement(ISearchContext context)
   at OpenQA.Selenium.Remote.RemoteWebDriver.FindElement(By by)
   at FindMyNumber.Gop.AnnouncementService.GetAnnouncements(RemoteWebDriver driver, Byte typeId, String rowsCssSelector, String clickCssSelector) in C:\Users\ahmet.burak\Desktop\FindMyNumber\FindMyNumber.Gop\AnnouncementService.cs:line 193', CAST(N'2020-11-30T00:00:31.333' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ExceptionLogs] OFF
GO
ALTER TABLE [dbo].[AnnouncementDefinitions]  WITH CHECK ADD  CONSTRAINT [FK_AnnouncementDefinitions_AnnouncementTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[AnnouncementTypes] ([PkId])
GO
ALTER TABLE [dbo].[AnnouncementDefinitions] CHECK CONSTRAINT [FK_AnnouncementDefinitions_AnnouncementTypes]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_AnnouncementTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[AnnouncementTypes] ([PkId])
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_AnnouncementTypes]
GO
