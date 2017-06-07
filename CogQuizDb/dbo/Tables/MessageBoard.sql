CREATE TABLE [dbo].[MessageBoard] (
    [id]          INT             IDENTITY (1, 1) NOT NULL,
    [firstName]   VARCHAR (100)   NULL,
    [lastName]    VARCHAR (100)   NULL,
    [email]       VARCHAR (100)   NULL,
    [textMessage] NVARCHAR (2000) NULL,
    [product]     NVARCHAR (50)   NULL,
    CONSTRAINT [PK_MessageBoard] PRIMARY KEY CLUSTERED ([id] ASC)
);

