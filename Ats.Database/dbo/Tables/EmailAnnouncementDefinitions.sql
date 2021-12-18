CREATE TABLE [dbo].[EmailAnnouncementDefinitions] (
    [PkId]                     INT IDENTITY (1, 1) NOT NULL,
    [AnnouncementDefinitionId] INT NOT NULL,
    [EmailId]                  INT NOT NULL,
    CONSTRAINT [PK_EmailAnnouncementDefinitions] PRIMARY KEY CLUSTERED ([PkId] ASC),
    CONSTRAINT [FK_EmailAnnouncementDefinitions_AnnouncementDefinitions] FOREIGN KEY ([AnnouncementDefinitionId]) REFERENCES [dbo].[AnnouncementDefinitions] ([PkId]),
    CONSTRAINT [FK_EmailAnnouncementDefinitions_Emails] FOREIGN KEY ([EmailId]) REFERENCES [dbo].[Emails] ([PkId])
);

