CREATE TABLE [dbo].[Participant] (
    [id]            INT              NOT NULL,
    [FirstName]     NCHAR (200)      NULL,
    [LastName]      NCHAR (10)       NULL,
    [BirthDate]     DATE             NULL,
    [onMeds]        BIT              NULL,
    [Meds]          NCHAR (200)      NULL,
    [Gender]        NCHAR (10)       NULL,
    [HeadInj]       BIT              NULL,
    [Income]        NCHAR (100)      NULL,
    [Hand]          NCHAR (10)       NULL,
    [BrainActivity] NCHAR (10)       NULL,
    [Exercesi]      NCHAR (10)       NULL,
    [SelfEsteem]    NCHAR (10)       NULL,
    [userID]        UNIQUEIDENTIFIER NOT NULL,
    [providerId]    INT              NULL,
    CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Participant_aspnet_Users] FOREIGN KEY ([userID]) REFERENCES [dbo].[aspnet_Users] ([UserId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Participant_Provider] FOREIGN KEY ([id]) REFERENCES [dbo].[Provider] ([id])
);

