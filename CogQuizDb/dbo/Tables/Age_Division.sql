CREATE TABLE [dbo].[Age_Division] (
    [ageGroup]   INT NOT NULL,
    [valueLow]   INT NOT NULL,
    [valueUpper] INT NOT NULL,
    CONSTRAINT [PK_Age_Division] PRIMARY KEY CLUSTERED ([ageGroup] ASC)
);

