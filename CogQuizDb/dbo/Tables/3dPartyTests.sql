CREATE TABLE [dbo].[3dPartyTests] (
    [transactionId] INT              NULL,
    [sequence]      INT              NOT NULL,
    [id]            INT              IDENTITY (1, 1) NOT NULL,
    [finished]      BIT              NOT NULL,
    [userId]        UNIQUEIDENTIFIER NOT NULL,
    [paramString]   VARCHAR (MAX)    NULL,
    [relationship]  VARCHAR (50)     NOT NULL,
    [tId]           INT              NULL,
    CONSTRAINT [PK_3dPartyTests_1] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_3dPartyTests_3dPartyTests] FOREIGN KEY ([id]) REFERENCES [dbo].[3dPartyTests] ([id])
);





