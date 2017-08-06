CREATE TABLE [dbo].[SyllogismsTestNorms] (
    [ageGroup]     INT             NOT NULL,
    [mean]         DECIMAL (18, 5) NOT NULL,
    [stdDeviation] DECIMAL (18, 5) NOT NULL,
    CONSTRAINT [PK_SyllogismsTestNorms] PRIMARY KEY CLUSTERED ([ageGroup] ASC)
);

