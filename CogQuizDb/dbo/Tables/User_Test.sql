CREATE TABLE [dbo].[User_Test] (
    [testId]       VARCHAR (50)     NULL,
    [userId]       UNIQUEIDENTIFIER NOT NULL,
    [isPaid]       BIT              NULL,
    [isStarted]    BIT              NULL,
    [isFinished]   BIT              NULL,
    [tID]          INT              IDENTITY (1, 1) NOT NULL,
    [finishedDate] DATETIME         NULL,
    [startedDate]  DATETIME         NULL,
    [paidDate]     DATETIME         NULL,
    [modifyId]     VARCHAR (50)     NULL,
    CONSTRAINT [tID_unique] UNIQUE NONCLUSTERED ([tID] ASC)
);

