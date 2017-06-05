USE [TestApp]
GO
/****** Object:  Table [dbo].[MemoryCardsResults]    Script Date: 05.06.2017 22:53:23 ******/
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
SET IDENTITY_INSERT [dbo].[MemoryCardsResults] ON 

INSERT [dbo].[MemoryCardsResults] ([Id], [Name], [TotalMoves], [IncorrectMatching], [Score], [FirstCardAvgRespTime], [SecondCardAvgRespTime], [TestTime]) VALUES (1, N'Test 1 Score', 2, 0, 8, 1136, 743, 2)
INSERT [dbo].[MemoryCardsResults] ([Id], [Name], [TotalMoves], [IncorrectMatching], [Score], [FirstCardAvgRespTime], [SecondCardAvgRespTime], [TestTime]) VALUES (2, N'Test 2 Score', 2, 0, 8, 1353, 313, 2)
INSERT [dbo].[MemoryCardsResults] ([Id], [Name], [TotalMoves], [IncorrectMatching], [Score], [FirstCardAvgRespTime], [SecondCardAvgRespTime], [TestTime]) VALUES (3, N'Test 3 Score', 2, 0, 8, 1419, 189, 2)
INSERT [dbo].[MemoryCardsResults] ([Id], [Name], [TotalMoves], [IncorrectMatching], [Score], [FirstCardAvgRespTime], [SecondCardAvgRespTime], [TestTime]) VALUES (4, N'Total Score', 6, 0, 8, 1302, 415, 6)
SET IDENTITY_INSERT [dbo].[MemoryCardsResults] OFF
/****** Object:  StoredProcedure [dbo].[InsertMemoryCardsResult]    Script Date: 05.06.2017 22:53:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Insert New Result Into Memory Cards Results Table>
-- =============================================
CREATE PROCEDURE [dbo].[InsertMemoryCardsResult] 
	-- Add the parameters for the stored procedure here
	@name as nvarchar(250), 
	@totalMoves as int,
	@incorrectMatching as int,
	@score as int,
	@firstCardAvgRespTime as int,
	@secondCardAvgRespTime as int,
	@testTime as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [TestApp].[dbo].[MemoryCardsResults] 
	VALUES(@name,@totalMoves,@incorrectMatching,@score,@firstCardAvgRespTime,@secondCardAvgRespTime,@testTime)
END

GO
