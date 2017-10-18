CREATE TABLE [dbo].[TrailsUserResults] (
    [id]         INT              IDENTITY (1, 1) NOT NULL,
    [userId]     UNIQUEIDENTIFIER NOT NULL,
    [timeTrailA] DECIMAL (18, 5)  NULL,
    [timeTrailB] DECIMAL (18, 5)  NULL,
    [date]       DATETIME2 (7)    NULL,
    [tId]        INT              NULL,
    CONSTRAINT [PK_TrailsUserResults] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_TrailsUserResults_aspnet_Membership] FOREIGN KEY ([userId]) REFERENCES [dbo].[aspnet_Membership] ([UserId]) ON DELETE CASCADE ON UPDATE CASCADE
);

