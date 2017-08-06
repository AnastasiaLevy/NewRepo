CREATE TABLE [dbo].[Provider] (
    [id]                   INT              IDENTITY (1, 1) NOT NULL,
    [userId]               UNIQUEIDENTIFIER NOT NULL,
    [companyName]          NVARCHAR (100)   NULL,
    [companyContactFirst]  NCHAR (10)       NULL,
    [companyContactName]   NVARCHAR (100)   NULL,
    [companyContactEmail]  NVARCHAR (100)   NULL,
    [companyContactNumber] NCHAR (10)       NULL,
    [providerCode]         NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Provider_aspnet_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[aspnet_Users] ([UserId])
);

