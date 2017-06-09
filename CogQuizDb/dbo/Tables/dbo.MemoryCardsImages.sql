USE [TestApp]
GO
/****** Object:  Table [dbo].[MemoryCardsImages]    Script Date: 09.06.2017 3:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryCardsImages](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Path] [nvarchar](max) NOT NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_MemoryCardsImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
