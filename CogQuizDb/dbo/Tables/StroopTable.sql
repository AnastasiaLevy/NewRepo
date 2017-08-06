CREATE TABLE [dbo].[StroopTable] (
    [tId]        INT             NOT NULL,
    [htmlString] NVARCHAR (2000) NULL,
    CONSTRAINT [PK_StroopTable] PRIMARY KEY CLUSTERED ([tId] ASC)
);

