USE [TestApp]
GO
/****** Object:  Table [dbo].[MemoryCardsImages]    Script Date: 05.06.2017 0:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryCardsImages](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Path] [nvarchar](max) NOT NULL,
	[TestNumber] [int] NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_MemoryCardsImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemoryCardsStructure]    Script Date: 05.06.2017 0:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryCardsStructure](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Structure] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_MemoryCardsStructure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemoryCardsTexts]    Script Date: 05.06.2017 0:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryCardsTexts](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[TestNumber] [int] NULL,
 CONSTRAINT [PK_MemoryCardsTexts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (1, N'flag01', N'../memoryImg/flags/flag01.png', 1, 1)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (2, N'flag02', N'../memoryImg/flags/flag02.png', 1, 2)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (3, N'flag03', N'../memoryImg/flags/flag03.png', 1, 3)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (4, N'flag04', N'../memoryImg/flags/flag04.png', 1, 4)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (5, N'flag05', N'../memoryImg/flags/flag05.png', 1, 5)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (6, N'flag06', N'../memoryImg/flags/flag06.png', 1, 6)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (7, N'flag07', N'../memoryImg/flags/flag07.png', 1, 7)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (8, N'flag08', N'../memoryImg/flags/flag08.png', 1, 8)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (9, N'flag09', N'../memoryImg/flags/flag09.png', 1, 9)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (10, N'flag10', N'../memoryImg/flags/flag10.png', 1, 10)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (11, N'flag11', N'../memoryImg/flags/flag11.png', 1, 11)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (12, N'flag12', N'../memoryImg/flags/flag12.png', 1, 12)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (13, N'face01', N'../memoryImg/faces/face01.png', 2, 1)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (14, N'face02', N'../memoryImg/faces/face02.png', 2, 2)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (15, N'face03', N'../memoryImg/faces/face03.png', 2, 3)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (16, N'face04', N'../memoryImg/faces/face04.png', 2, 4)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (17, N'face05', N'../memoryImg/faces/face05.png', 2, 5)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (18, N'face06', N'../memoryImg/faces/face06.png', 2, 6)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (19, N'face07', N'../memoryImg/faces/face07.png', 2, 7)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (20, N'face08', N'../memoryImg/faces/face08.png', 2, 8)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (21, N'face09', N'../memoryImg/faces/face09.png', 2, 9)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (22, N'face10', N'../memoryImg/faces/face10.png', 2, 10)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (23, N'face11', N'../memoryImg/faces/face11.png', 2, 11)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (24, N'face12', N'../memoryImg/faces/face12.png', 2, 12)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (25, N'other01', N'../memoryImg/others/other01.png', 3, 1)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (26, N'other02', N'../memoryImg/others/other02.png', 3, 2)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (27, N'other03', N'../memoryImg/others/other03.png', 3, 3)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (28, N'other04', N'../memoryImg/others/other04.png', 3, 4)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (29, N'other05', N'../memoryImg/others/other05.png', 3, 5)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (30, N'other06', N'../memoryImg/others/other06.png', 3, 6)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (31, N'other07', N'../memoryImg/others/other07.png', 3, 7)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (32, N'other08', N'../memoryImg/others/other08.png', 3, 8)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (33, N'other09', N'../memoryImg/others/other09.png', 3, 9)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (34, N'other10', N'../memoryImg/others/other10.png', 3, 10)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (35, N'other11', N'../memoryImg/others/other11.png', 3, 11)
INSERT [dbo].[MemoryCardsImages] ([Id], [Name], [Path], [TestNumber], [SortOrder]) VALUES (36, N'other12', N'../memoryImg/others/other12.png', 3, 12)
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (1, N'SchemeTest1', N'1;2;3;4;5;6;8;9;3;10;11;2;10;7;1;4;7;12;8;11;12;6;9;5')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (2, N'SchemeTest2', N'1;2;3;4;5;6;8;9;3;10;11;2;10;7;1;4;7;12;8;11;12;6;9;5')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (3, N'SchemeTest3', N'1;2;3;4;5;6;8;9;3;10;11;2;10;7;1;4;7;12;8;11;12;6;9;5')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (4, N'SchemeMatrixTest1', N'6;4')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (5, N'SchemeMatrixTest2', N'6;4')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (6, N'SchemeMatrixTest3', N'6;4')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (7, N'TimeTest1', N'60000')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (8, N'TimeTest2', N'60000')
INSERT [dbo].[MemoryCardsStructure] ([Id], [Name], [Structure]) VALUES (9, N'TimeTest3', N'60000')
INSERT [dbo].[MemoryCardsTexts] ([Id], [Name], [Text], [TestNumber]) VALUES (1, N'TestMessage1', N'Test1
intro text
intro text
intro text
intro text
intro text
  
Press the spacebar to begin', 1)
INSERT [dbo].[MemoryCardsTexts] ([Id], [Name], [Text], [TestNumber]) VALUES (2, N'TestMessage2', N'Test2
intro text
intro text
intro text
intro text
intro text
  
Press the spacebar to begin', 2)
INSERT [dbo].[MemoryCardsTexts] ([Id], [Name], [Text], [TestNumber]) VALUES (3, N'TestMessage3', N'Test3
intro text
intro text
intro text
intro text
intro text
  
Press the spacebar to begin', 3)
INSERT [dbo].[MemoryCardsTexts] ([Id], [Name], [Text], [TestNumber]) VALUES (4, N'Error', N'Error
Configuration of next test is not
a multiple of 6.', NULL)
INSERT [dbo].[MemoryCardsTexts] ([Id], [Name], [Text], [TestNumber]) VALUES (5, N'LabelNames', N'Category
Test1
Test2
Test3
Total', NULL)
INSERT [dbo].[MemoryCardsTexts] ([Id], [Name], [Text], [TestNumber]) VALUES (6, N'LabelValues', N'\Total\moves	\Incorrect\matching	\\$Score\(%)	First\Card\Avg.\Resp.\Time\(ms)	Second\Card\Avg.\Resp.\Time\(ms)	\Test\Time\(s)', NULL)
/****** Object:  StoredProcedure [dbo].[GetAllMemoryCardsImages]    Script Date: 05.06.2017 0:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Gets  all images with non NULL TestNumber and SortOrder.Ordered by TestNumber->SortOrder>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsImages] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [TestApp].[dbo].[MemoryCardsImages]
	where TestNumber is not null and SortOrder is not null
	order by TestNumber, SortOrder
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllMemoryCardsStucture]    Script Date: 05.06.2017 0:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <01.06.2017>
-- Description:	<Gets all structures for Memory Cards Test>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsStucture]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id],[Name],[Structure] FROM [TestApp].[dbo].[MemoryCardsStructure]

END

GO
/****** Object:  StoredProcedure [dbo].[GetAllMemoryCardsTexts]    Script Date: 05.06.2017 0:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Create date: <01.06.2017>
-- Description:	<Get All Memory Cards Texts>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsTexts]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT * FROM [TestApp].[dbo].[MemoryCardsTexts]
END

GO
