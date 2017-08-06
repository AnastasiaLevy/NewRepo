CREATE TABLE [dbo].[NBackUserResults] (
    [id]            INT              IDENTITY (1, 1) NOT NULL,
    [userId]        UNIQUEIDENTIFIER NULL,
    [tId]           INT              NULL,
    [round]         NCHAR (10)       NULL,
    [hit]           INT              NULL,
    [miss]          INT              NULL,
    [correctReject] INT              NULL,
    [falseAlarm]    INT              NULL,
    [omitTarget]    INT              NULL,
    [percentScore]  DECIMAL (18, 2)  NULL,
    [omitNoTarget]  INT              NULL
);

