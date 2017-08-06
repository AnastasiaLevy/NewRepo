CREATE TABLE [dbo].[MemoryCards] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (250) NOT NULL,
    CONSTRAINT [PK_MemoryCards] PRIMARY KEY CLUSTERED ([Id] ASC)
);

