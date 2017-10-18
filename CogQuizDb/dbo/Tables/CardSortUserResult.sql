CREATE TABLE [dbo].[CardSortUserResult] (
    [id]                INT              IDENTITY (1, 1) NOT NULL,
    [userId]            UNIQUEIDENTIFIER NOT NULL,
    [tId]               INT              NOT NULL,
    [respCount]         INT              NULL,
    [respTime]          DECIMAL (18, 5)  NULL,
    [correctCnt]        INT              NULL,
    [errorCnt]          INT              NULL,
    [errorTime]         DECIMAL (18, 5)  NULL,
    [persevResp]        INT              NULL,
    [persevTime]        DECIMAL (18, 5)  NULL,
    [persevRespError]   INT              NULL,
    [persevRespErrTime] DECIMAL (18, 5)  NULL,
    [uniqErr]           INT              NULL,
    [uniqErrTime]       DECIMAL (18, 5)  NULL,
    [failureSetCnt]     INT              NULL,
    [category]          NVARCHAR (50)    NULL,
    [catComplete]       NVARCHAR (50)    NULL,
    CONSTRAINT [FK_CardSortUserResult_aspnet_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[aspnet_Users] ([UserId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_CardSortUserResult_User_Test] FOREIGN KEY ([tId]) REFERENCES [dbo].[User_Test] ([tID]) ON DELETE CASCADE ON UPDATE CASCADE
);

