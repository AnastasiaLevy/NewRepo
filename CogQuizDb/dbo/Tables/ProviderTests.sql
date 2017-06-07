CREATE TABLE [dbo].[ProviderTests] (
    [id]             INT          IDENTITY (1, 1) NOT NULL,
    [providerId]     INT          NOT NULL,
    [testType]       VARCHAR (50) NOT NULL,
    [testTypeOption] INT          NOT NULL,
    [numLeft]        INT          NULL,
    CONSTRAINT [PK_ProviderTests] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ProviderTests_Provider] FOREIGN KEY ([providerId]) REFERENCES [dbo].[Provider] ([id])
);

