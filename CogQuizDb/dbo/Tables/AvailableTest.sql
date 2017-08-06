CREATE TABLE [dbo].[AvailableTest] (
    [id]                INT           IDENTITY (1, 1) NOT NULL,
    [testId]            VARCHAR (50)  NULL,
    [testName]          NVARCHAR (50) NOT NULL,
    [testCategory]      NCHAR (50)    NULL,
    [modifiedTestTable] VARCHAR (100) NULL,
    CONSTRAINT [PK_AvailableTest] PRIMARY KEY CLUSTERED ([id] ASC)
);

