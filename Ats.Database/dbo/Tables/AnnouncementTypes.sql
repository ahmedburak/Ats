CREATE TABLE [dbo].[AnnouncementTypes] (
    [PkId] TINYINT       IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_AnnouncementTypes] PRIMARY KEY CLUSTERED ([PkId] ASC)
);

