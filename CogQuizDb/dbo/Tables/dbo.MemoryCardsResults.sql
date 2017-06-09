USE [TestApp]
GO
/****** Object:  Table [dbo].[MemoryCardsResults]    Script Date: 09.06.2017 3:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryCardsResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[TotalMoves] [int] NOT NULL,
	[IncorrectMatching] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[FirstCardAvgRespTime] [int] NOT NULL,
	[SecondCardAvgRespTime] [int] NOT NULL,
	[TestTime] [int] NOT NULL,
 CONSTRAINT [PK_MemoryCardsResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
