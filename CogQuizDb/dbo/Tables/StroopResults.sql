CREATE TABLE [dbo].[StroopResults] (
    [id]                 INT              IDENTITY (1, 1) NOT NULL,
    [userId]             UNIQUEIDENTIFIER NULL,
    [testId]             INT              NULL,
    [round]              NVARCHAR (50)    NULL,
    [correctRespCount]   INT              NULL,
    [incorrectRespCount] INT              NULL,
    [avgRespTime]        DECIMAL (18, 5)  NULL
);

