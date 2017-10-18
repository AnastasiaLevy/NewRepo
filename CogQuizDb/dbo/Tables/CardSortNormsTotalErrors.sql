CREATE TABLE [dbo].[CardSortNormsTotalErrors] (
    [ageGroup]     INT             NOT NULL,
    [numberPart]   INT             NULL,
    [mean]         DECIMAL (18, 5) NULL,
    [stdDeviation] DECIMAL (18, 5) NULL,
    CONSTRAINT [PK_CardSortNormsTotalErrors] PRIMARY KEY CLUSTERED ([ageGroup] ASC)
);

