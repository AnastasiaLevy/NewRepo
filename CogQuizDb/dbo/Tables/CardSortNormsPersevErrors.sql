CREATE TABLE [dbo].[CardSortNormsPersevErrors] (
    [ageGroup]           INT             NOT NULL,
    [numberParticipants] INT             NULL,
    [mean]               DECIMAL (18, 5) NULL,
    [stdDeviation]       DECIMAL (18, 5) NULL,
    CONSTRAINT [PK_CardSortNormsPersevErrors] PRIMARY KEY CLUSTERED ([ageGroup] ASC)
);

