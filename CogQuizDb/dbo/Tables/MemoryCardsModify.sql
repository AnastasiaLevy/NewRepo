﻿
CREATE TABLE [dbo].[MemoryCardsModify] (
    [Id]         INT IDENTITY (1, 1) NOT NULL,
    [ProviderId] INT NOT NULL,
    [TestId]     INT NOT NULL,
    [CanModify]  BIT NOT NULL,
    CONSTRAINT [PK_MemoryCardsModify] PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO
