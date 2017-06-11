
CREATE TABLE [dbo].[MemoryCardsTests] (
    [Id]     INT            IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (250) NOT NULL,
    [Images] NVARCHAR (250) NOT NULL,
    [TestId] INT            CONSTRAINT [DF_MemoryCardsTests_TestId] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_MemoryCardsTests] PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO
