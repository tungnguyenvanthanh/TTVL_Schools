USE [OnlineShop]
GO
/****** Object:  StoredProcedure [dbo].[Account_Login]    Script Date: 2017/01/06 10:12:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Account_Login]
	@UserName varchar(50),
	@Password varchar(50)
AS
BEGIN
	DECLARE @count int
	DECLARE @res bit
	SELECT @count = COUNT(*) FROM Account WHERE dbo.Account.UserName = @UserName AND dbo.Account.Password = @Password
	IF @count > 0
		SET @res = 1
	ELSE
		SET @res = 0

	SELECT @res
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ListAll]    Script Date: 2017/01/06 10:12:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Category_ListAll]
AS
SELECT * FROM dbo.Category WHERE dbo.Category.Status = 1 ORDER BY [dbo].[Category].[Order] ASC
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2017/01/06 10:12:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2017/01/06 10:12:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Alias] [varchar](50) NULL,
	[ParentID] [int] NULL,
	[CreatrDate] [datetime] NULL,
	[Order] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2017/01/06 10:12:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Alias] [varchar](50) NULL,
	[CategoryID] [int] NULL,
	[Images] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Price] [decimal](18, 0) NULL,
	[Detail] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Alias], [ParentID], [CreatrDate], [Order], [Status]) VALUES (1, N'Tivi', N'tivi', NULL, CAST(0x0000A6E1017121EA AS DateTime), 0, 1)
INSERT [dbo].[Category] ([ID], [Name], [Alias], [ParentID], [CreatrDate], [Order], [Status]) VALUES (2, N'Điện thoại', N'dienthoai', NULL, CAST(0x0000A6E10171589B AS DateTime), 1, 1)
INSERT [dbo].[Category] ([ID], [Name], [Alias], [ParentID], [CreatrDate], [Order], [Status]) VALUES (3, N'Máy lạnh', N'maylanh', NULL, CAST(0x0000A6E101717B3F AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatrDate]  DEFAULT (getdate()) FOR [CreatrDate]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
