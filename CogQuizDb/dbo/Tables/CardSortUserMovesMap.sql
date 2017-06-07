CREATE TABLE [dbo].[CardSortUserMovesMap] (
    [tId]       INT            NOT NULL,
    [movesText] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_CardSortUserMovesMap] PRIMARY KEY CLUSTERED ([tId] ASC)
);

