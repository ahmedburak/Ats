CREATE TABLE [dbo].[Announcements] (
    [PkId]                     INT             IDENTITY (1, 1) NOT NULL,
    [AnnouncementDefinitionId] INT             NOT NULL,
    [Text]                     NVARCHAR (4000) NOT NULL,
    [Url]                      NVARCHAR (500)  NOT NULL,
    [Date]                     DATETIME        NOT NULL,
    [CreateDate]               DATETIME        NOT NULL,
    CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED ([PkId] ASC),
    CONSTRAINT [FK_Announcements_AnnouncementDefinitions] FOREIGN KEY ([AnnouncementDefinitionId]) REFERENCES [dbo].[AnnouncementDefinitions] ([PkId])
);

