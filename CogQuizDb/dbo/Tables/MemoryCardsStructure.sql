﻿
CREATE TABLE [dbo].[MemoryCardsStructure] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (150) NOT NULL,
    [Structure]  NVARCHAR (150) NOT NULL,
    [TestNumber] INT            CONSTRAINT [DF_MemoryCardsStructure_TestNumber] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_MemoryCardsStructure] PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO

GO
