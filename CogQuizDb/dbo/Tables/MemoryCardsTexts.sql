
CREATE TABLE [dbo].[MemoryCardsTexts](
	[Name] [nvarchar](150) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[TestNumber] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
