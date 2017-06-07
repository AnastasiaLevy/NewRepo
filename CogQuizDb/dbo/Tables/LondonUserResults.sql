CREATE TABLE [dbo].[LondonUserResults] (
    [id]               INT              IDENTITY (1, 1) NOT NULL,
    [testId]           VARCHAR (50)     NOT NULL,
    [tId]              INT              NOT NULL,
    [userId]           UNIQUEIDENTIFIER NOT NULL,
    [game]             INT              NULL,
    [initThinkTime]    DECIMAL (18, 5)  NULL,
    [totalTime]        DECIMAL (18, 5)  NULL,
    [numberMoves]      INT              NULL,
    [numberWrongMoves] INT              NULL,
    [overTime]         BIT              NULL,
    [overMove]         BIT              NULL,
    [minMoves]         INT              NULL,
    CONSTRAINT [PK_LondonUserResults] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_LondonUserResults_aspnet_Membership] FOREIGN KEY ([userId]) REFERENCES [dbo].[aspnet_Membership] ([UserId])
);

