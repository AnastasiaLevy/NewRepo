USE [TestApp]
GO
/****** Object:  Table [dbo].[MemoryCardsTexts]    Script Date: 09.06.2017 3:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryCardsTexts](
	[Name] [nvarchar](150) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[TestNumber] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
