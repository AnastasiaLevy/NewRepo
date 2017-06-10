

CREATE TABLE [dbo].[MemoryCardsStructure](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Structure] [nvarchar](150) NOT NULL,
	[TestNumber] [int] NOT NULL,
 CONSTRAINT [PK_MemoryCardsStructure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[MemoryCardsStructure] ADD  CONSTRAINT [DF_MemoryCardsStructure_TestNumber]  DEFAULT ((0)) FOR [TestNumber]
GO
