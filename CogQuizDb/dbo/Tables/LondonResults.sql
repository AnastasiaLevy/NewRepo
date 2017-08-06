CREATE TABLE [dbo].[LondonResults] (
    [id]           INT             IDENTITY (1, 1) NOT NULL,
    [ageGroup]     INT             NOT NULL,
    [numberPart]   INT             NOT NULL,
    [mean]         DECIMAL (18, 5) NOT NULL,
    [stdDeviation] DECIMAL (18, 5) NULL,
    [lowBound]     DECIMAL (18, 5) NULL,
    [upperBound]   DECIMAL (18, 5) NULL,
    [modTestId]    VARCHAR (50)    NULL,
    CONSTRAINT [PK_LondonResults] PRIMARY KEY CLUSTERED ([id] ASC)
);

