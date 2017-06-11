
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
