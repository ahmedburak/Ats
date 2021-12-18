CREATE TABLE [dbo].[Sections] (
    [PkId] INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (500) NOT NULL,
    CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED ([PkId] ASC)
);

