CREATE TABLE [dbo].[ErrorMessages] (
    [id]              INT              IDENTITY (1, 1) NOT NULL,
    [userId]          UNIQUEIDENTIFIER NULL,
    [pageName]        NCHAR (100)      NULL,
    [procName]        NCHAR (100)      NULL,
    [exeptionMessage] NVARCHAR (2000)  NULL,
    [errorDate]       DATETIME         NULL,
    CONSTRAINT [PK_ErrorMessages] PRIMARY KEY CLUSTERED ([id] ASC)
);

