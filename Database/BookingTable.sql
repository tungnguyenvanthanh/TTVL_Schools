USE [BookingTable]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Username] [nvarchar](32) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
	[FullName] [nvarchar](64) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[Phone] [varchar](16) NOT NULL,
	[Address] [nvarchar](128) NOT NULL,
	[IdentityCard] [char](16) NOT NULL,
	[Image] [nvarchar](16) NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__admin__3213E83F3B301D02] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](32) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
	[FullName] [nvarchar](32) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[Phone] [varchar](16) NOT NULL,
	[Address] [nvarchar](128) NOT NULL,
	[Image] [nvarchar](16) NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__customer__3213E83FADBA6AA5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Floor]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Food]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Unit] [nvarchar](16) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [nvarchar](16) NULL,
	[Description] [text] NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__food__3213E83F623A5D7E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrdersId] [int] NOT NULL,
	[TableId] [int] NOT NULL,
	[FoodId] [int] NULL,
	[CreatorId] [int] NOT NULL,
	[FoodPrice] [decimal](10, 2) NULL,
	[Quantity] [int] NULL,
	[Subtotal] [decimal](10, 2) NULL,
	[CreationTime] [datetime] NULL,
	[OrderTime] [datetime] NULL,
	[Completed] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__orders_d__3213E83F09299217] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[CreatorId] [int] NOT NULL,
	[PayeeId] [int] NULL,
	[Name] [nvarchar](64) NOT NULL,
	[SubTotal] [decimal](10, 2) NOT NULL,
	[Discount] [decimal](10, 0) NULL,
	[Tax] [decimal](10, 2) NULL,
	[CreationTime] [datetime] NOT NULL,
	[OrderTime] [datetime] NULL,
	[DepositPrice] [decimal](10, 2) NULL,
	[PaymentTime] [datetime] NULL,
	[Completed] [bit] NULL,
	[Note] [nvarchar](1024) NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__orders__3213E83F6F806F0C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__permissi__3213E83F2B350F79] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__role__3213E83FEFE2D0B5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Key] [nvarchar](16) NOT NULL,
	[Value] [nvarchar](64) NOT NULL,
	[Type] [nchar](10) NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UpdateByAdminId] [int] NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FloorId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Seats] [smallint] NOT NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__table__3213E83F82644D0D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TableType]    Script Date: 2017/03/03 11:36:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[DepositPrice] [decimal](10, 2) NOT NULL,
	[Deleted] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateByAdminId] [int] NULL,
 CONSTRAINT [PK__table_ty__3213E83F471E104F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [RoleId], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [IdentityCard], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1, 9, N'system', N'250cf8b51c773f3f8dc8b4be867a9a02', N'Nguyễn Hoàng Nam', CAST(0xC41E0B00 AS Date), N'nnam2404@gmail.com', N'0978067290', N'Long An', N'301578367       ', N'admin_1.png', 1, 0, CAST(0x0000A7000011D675 AS DateTime), 1)
INSERT [dbo].[Admin] ([Id], [RoleId], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [IdentityCard], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (3, 9, N'ANGUYEN', N'202cb962ac59075b964b07152d234b70', N'Nguyen Van A', CAST(0x573C0B00 AS Date), N'nguyenvana@gmail.com', N'093842532', N'Long An', N'12345678        ', N'admin_3.png', 1, 0, CAST(0x0000A7000011DD4D AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1, N'CUSTOMER', N'202cb962ac59075b964b07152d234b70', N'Nguyễn Hoàng Nam', CAST(0xC41E0B00 AS Date), N'nnam2404.family@gmail.com', N'0978067290', N'Long An', N'customer_1.png', 1, 0, CAST(0x0000A700001413CA AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (3, N'SYSTEM', N'202cb962ac59075b964b07152d234b70', N'21321312', CAST(0x1D3C0B00 AS Date), N'n14dcat051@student.ptithcm.edu.vn', N'12312', N'123213', NULL, 1, 1, CAST(0x0000A6C200FF8260 AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (4, N'nnam', N'202cb962ac59075b964b07152d234b70', N'Nguyen', CAST(0xC41E0B00 AS Date), N'n14dcat051@student.ptithcm.edu.vn', N'09876543', N'Long An', N'customer_4.png', 1, 0, CAST(0x0000A6FC00DF4D1F AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (5, N'PHUC', N'202cb962ac59075b964b07152d234b70', N'Nguyen Hoang Phuc', CAST(0xD22D0B00 AS Date), N'nnam2404.family@gmail.com', N'0987642516', N'Long An', N'customer_5.png', 1, 1, CAST(0x0000A6FC0007FFC0 AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (6, N'123', N'202cb962ac59075b964b07152d234b70', N'Nguyen Hoang Nam', CAST(0x1A3C0B00 AS Date), N'n14dcat051@student.ptithcm.edu.vn', N'0978067290', N'Long An', N'customer_6.png', 1, 0, CAST(0x0000A7000011B522 AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (7, N'456', N'202cb962ac59075b964b07152d234b70', N'Nguyen', CAST(0x253C0B00 AS Date), N'nnam2404.family@gmail.com', N'13121321', N'12321eqw', NULL, 1, 1, CAST(0x0000A6FC0007DE5B AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [Username], [Password], [FullName], [DateOfBirth], [Email], [Phone], [Address], [Image], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (8, N'test', N'202cb962ac59075b964b07152d234b70', N'test', CAST(0x362B0B00 AS Date), N'test@gmail.com', N'test', N'test', NULL, 1, 1, CAST(0x0000A6FC00E895A3 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Floor] ON 

INSERT [dbo].[Floor] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1011, N'Floor 1', 0, CAST(0x0000A6C7018AC96A AS DateTime), 1)
INSERT [dbo].[Floor] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1012, N'Floor 2', 0, CAST(0x0000A6C80000049A AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Floor] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([Id], [Name], [Unit], [Price], [Quantity], [Image], [Description], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1, N'Cá Lốc nướng trui', N'Con', CAST(10.00 AS Decimal(10, 2)), 36, N'food_1.png', N'', 1, 0, CAST(0x0000A70000138500 AS DateTime), 1)
INSERT [dbo].[Food] ([Id], [Name], [Unit], [Price], [Quantity], [Image], [Description], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (3, N'Rau Muống xào Tỏi', N'Đĩa', CAST(8.00 AS Decimal(10, 2)), 5, N'food_3.png', N'', 1, 0, CAST(0x0000A6C70182AA35 AS DateTime), 1)
INSERT [dbo].[Food] ([Id], [Name], [Unit], [Price], [Quantity], [Image], [Description], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (5, N'Tôm nướng muối Ớt', N'Kg', CAST(12.00 AS Decimal(10, 2)), 47, N'food_5.png', N'', 1, 0, CAST(0x0000A6C70182B6CB AS DateTime), 1)
INSERT [dbo].[Food] ([Id], [Name], [Unit], [Price], [Quantity], [Image], [Description], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (6, N'Cá Rô kho tộ', N'Con', CAST(3.00 AS Decimal(10, 2)), 90, N'food_6.png', N'', 1, 0, CAST(0x0000A6C70182BEED AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1310, 1108, 12, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FB6791 AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FB6791 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1311, 1108, 12, 3, 1, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FB67B2 AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FB67B2 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1312, 1108, 12, 5, 1, CAST(12.00 AS Decimal(10, 2)), 1, CAST(12.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FB67D5 AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FB67D5 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1313, 1108, 12, 3, 1, CAST(8.00 AS Decimal(10, 2)), 2, CAST(16.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FB78BD AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FC57F9 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1315, 1109, 9, 1, 1, CAST(10.00 AS Decimal(10, 2)), 3, CAST(30.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FCB4EC AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6F2016CBD95 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1316, 1109, 9, 3, 1, CAST(8.00 AS Decimal(10, 2)), 2, CAST(16.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FCB50A AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FD4363 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1317, 1110, 10, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FDC32A AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FDC32A AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1318, 1110, 10, 3, 1, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FDC345 AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), 0, CAST(0x0000A6EB00FDC345 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1319, 1111, 11, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FE985D AS DateTime), CAST(0x0000A6EB00FE0F10 AS DateTime), 0, CAST(0x0000A6EB00FE985D AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1320, 1111, 11, 3, 1, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FE9888 AS DateTime), CAST(0x0000A6EB00FE0F10 AS DateTime), 0, CAST(0x0000A6EB00FE9888 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1321, 1111, 11, 3, 1, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FEA27A AS DateTime), CAST(0x0000A6EB00FE0F10 AS DateTime), 0, CAST(0x0000A6EB00FEA27A AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1322, 1111, 11, 5, 1, CAST(12.00 AS Decimal(10, 2)), 1, CAST(12.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FEA2AC AS DateTime), CAST(0x0000A6EB00FE0F10 AS DateTime), 0, CAST(0x0000A6EB00FEA2AC AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1323, 1112, 13, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6EB0105C3D1 AS DateTime), CAST(0x0000A6EB01057980 AS DateTime), 1, CAST(0x0000A6EB0105C3D1 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1324, 1112, 13, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6EB010650D6 AS DateTime), CAST(0x0000A6EB01064C70 AS DateTime), 1, CAST(0x0000A6EB010650D6 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1325, 1112, 13, 3, 1, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6EB0106512A AS DateTime), CAST(0x0000A6EB01064C70 AS DateTime), 1, CAST(0x0000A6EB0106512A AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1326, 1112, 13, 5, 1, CAST(12.00 AS Decimal(10, 2)), 1, CAST(12.00 AS Decimal(10, 2)), CAST(0x0000A6EB01065175 AS DateTime), CAST(0x0000A6EB01064C70 AS DateTime), 1, CAST(0x0000A6EB01065175 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1327, 1112, 13, 3, 1, CAST(8.00 AS Decimal(10, 2)), 4, CAST(32.00 AS Decimal(10, 2)), CAST(0x0000A6EB010866C4 AS DateTime), CAST(0x0000A6EB01064C70 AS DateTime), 1, CAST(0x0000A6EB010866C4 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1328, 1112, 13, 5, 1, CAST(12.00 AS Decimal(10, 2)), 2, CAST(24.00 AS Decimal(10, 2)), CAST(0x0000A6EB01086701 AS DateTime), CAST(0x0000A6EB01064C70 AS DateTime), 1, CAST(0x0000A6EB01086701 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1329, 1109, 9, 1, 1, CAST(10.00 AS Decimal(10, 2)), 2, CAST(20.00 AS Decimal(10, 2)), CAST(0x0000A6EB011C4888 AS DateTime), CAST(0x0000A6EB011AE5E0 AS DateTime), 0, CAST(0x0000A6F2016DDD9E AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1330, 1113, 9, 3, 6, CAST(8.00 AS Decimal(10, 2)), 2, CAST(16.00 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A6F300E297D0 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1331, 1113, 16, 3, 6, CAST(8.00 AS Decimal(10, 2)), 2, CAST(16.00 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A73000083D60 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1332, 1113, 11, 3, 6, CAST(8.00 AS Decimal(10, 2)), 2, CAST(16.00 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A70E0151D460 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1333, 1113, 9, 5, 6, CAST(12.00 AS Decimal(10, 2)), 2, CAST(24.00 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A6F300E297D0 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1334, 1113, 16, 5, 6, CAST(12.00 AS Decimal(10, 2)), 2, CAST(24.00 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A73000083D60 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1335, 1113, 11, 5, 6, CAST(12.00 AS Decimal(10, 2)), 2, CAST(24.00 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A70E0151D460 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1336, 1113, 9, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A6F300E297D0 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1337, 1113, 16, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A73000083D60 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1338, 1113, 11, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6ED0131249A AS DateTime), CAST(0x0000A70E0151D460 AS DateTime), 1, CAST(0x0000A6F301566A41 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1339, 1114, 9, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6F3015523C8 AS DateTime), CAST(0x0000A6F301549380 AS DateTime), 0, CAST(0x0000A6F3015523C8 AS DateTime), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1340, 1115, 11, 1, 6, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6F8000BB596 AS DateTime), NULL, NULL, CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1341, 1115, 10, 1, 6, CAST(10.00 AS Decimal(10, 2)), 1, CAST(10.00 AS Decimal(10, 2)), CAST(0x0000A6F8000BB596 AS DateTime), NULL, NULL, CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1342, 1115, 11, 3, 6, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6F8000BB596 AS DateTime), NULL, NULL, CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1343, 1115, 10, 3, 6, CAST(8.00 AS Decimal(10, 2)), 1, CAST(8.00 AS Decimal(10, 2)), CAST(0x0000A6F8000BB596 AS DateTime), NULL, NULL, CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1344, 1115, 11, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6F8000BB596 AS DateTime), CAST(0x0000A6F8000B42D0 AS DateTime), NULL, CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1345, 1115, 10, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6F8000BB596 AS DateTime), CAST(0x0000A6F8000B42D0 AS DateTime), NULL, CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1346, 1116, 9, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6F8000F6D65 AS DateTime), CAST(0x0000A6F8000B8920 AS DateTime), NULL, CAST(0x0000A6F8000F6D65 AS DateTime), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrdersId], [TableId], [FoodId], [CreatorId], [FoodPrice], [Quantity], [Subtotal], [CreationTime], [OrderTime], [Completed], [LastUpdate], [UpdateByAdminId]) VALUES (1347, 1116, 12, NULL, 6, NULL, NULL, NULL, CAST(0x0000A6F8000F6D65 AS DateTime), CAST(0x0000A6F8000B8920 AS DateTime), NULL, CAST(0x0000A6F8000F6D65 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1108, NULL, 1, NULL, N'Orders', CAST(46.00 AS Decimal(10, 2)), CAST(5 AS Decimal(10, 0)), CAST(4.96 AS Decimal(10, 2)), CAST(0x0000A6EB00FB6777 AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, CAST(0x0000A6EB011B4048 AS DateTime), 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1109, NULL, 1, NULL, N'Orders', CAST(66.00 AS Decimal(10, 2)), CAST(4 AS Decimal(10, 0)), CAST(3.88 AS Decimal(10, 2)), CAST(0x0000A6EB00FCB4CE AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, CAST(0x0000A6F2016DDDB3 AS DateTime), 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1110, NULL, 1, NULL, N'Orders', CAST(18.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(0x0000A6EB00FDC319 AS DateTime), CAST(0x0000A6EB00FB4FF0 AS DateTime), CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, CAST(0x0000A6EB00FDC319 AS DateTime), 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1111, NULL, 1, NULL, N'Orders', CAST(38.00 AS Decimal(10, 2)), CAST(4 AS Decimal(10, 0)), CAST(4.10 AS Decimal(10, 2)), CAST(0x0000A6EB00FE9845 AS DateTime), CAST(0x0000A6EB00FE0F10 AS DateTime), CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, CAST(0x0000A6EB00FE9845 AS DateTime), 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1112, 6, 6, 1, N'Booking', CAST(86.00 AS Decimal(10, 2)), CAST(9 AS Decimal(10, 0)), CAST(9.28 AS Decimal(10, 2)), CAST(0x0000A6EB0105C3D1 AS DateTime), NULL, CAST(50.40 AS Decimal(10, 2)), CAST(0x0000A6EB011722C9 AS DateTime), 1, N'
Payment info:
	Full Name: test buyer
	Email: nnam2404-buyer@gmail.com
	Gross total: $50.00', CAST(0x0000A6EB0105C3D1 AS DateTime), NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1113, 6, 6, 1, N'Booking', CAST(120.00 AS Decimal(10, 2)), CAST(12 AS Decimal(10, 0)), CAST(12.96 AS Decimal(10, 2)), CAST(0x0000A6ED0131249A AS DateTime), NULL, CAST(272.16 AS Decimal(10, 2)), CAST(0x0000A6FC00E90D94 AS DateTime), 1, N'
Payment info:
	Full Name: test buyer
	Email: nnam2404-buyer@gmail.com
	Gross total: $272.00', CAST(0x0000A6ED0131249A AS DateTime), NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1114, NULL, 1, NULL, N'Orders', CAST(10.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(0x0000A6F3015523A3 AS DateTime), CAST(0x0000A6F301549380 AS DateTime), CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, CAST(0x0000A6F3015523A3 AS DateTime), 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1115, 6, 6, NULL, N'Booking', CAST(36.00 AS Decimal(10, 2)), CAST(10 AS Decimal(10, 0)), CAST(12.00 AS Decimal(10, 2)), CAST(0x0000A6F8000BB596 AS DateTime), NULL, CAST(137.08 AS Decimal(10, 2)), NULL, NULL, N'
Payment info:
	Full Name: test buyer
	Email: nnam2404-buyer@gmail.com
	Gross total: $137.40', CAST(0x0000A6F8000BB596 AS DateTime), NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [CreatorId], [PayeeId], [Name], [SubTotal], [Discount], [Tax], [CreationTime], [OrderTime], [DepositPrice], [PaymentTime], [Completed], [Note], [LastUpdate], [UpdateByAdminId]) VALUES (1116, 6, 6, NULL, N'Booking', CAST(0.00 AS Decimal(10, 2)), CAST(10 AS Decimal(10, 0)), CAST(12.00 AS Decimal(10, 2)), CAST(0x0000A6F8000F6D65 AS DateTime), NULL, CAST(100.80 AS Decimal(10, 2)), NULL, NULL, N'
Payment info:
	Full Name: test buyer
	Email: nnam2404-buyer@gmail.com
	Gross total: $101.00', CAST(0x0000A6F8000F6D65 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1051, 8, N'Floor', 1, NULL, 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1052, 8, N'Table', 1, NULL, 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1053, 8, N'Staff', 1, NULL, 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1097, 1005, N'Orders', 1, CAST(0x0000A6C2000DFE55 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1136, 9, N'Orders', 0, CAST(0x0000A6C30053D650 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1137, 9, N'Food', 0, CAST(0x0000A6C30053D65E AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1138, 9, N'Floor', 0, CAST(0x0000A6C30053D672 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1139, 9, N'Table', 0, CAST(0x0000A6C30053D682 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1140, 9, N'Admin', 0, CAST(0x0000A6C30053D690 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1141, 9, N'Customer', 0, CAST(0x0000A6C30053D6A5 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1142, 9, N'Setting', 0, CAST(0x0000A6C30053D6BE AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (2111, 1006, N'Food', 1, CAST(0x0000A6FC00E8B4EA AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (2112, 1006, N'Floor', 1, CAST(0x0000A6FC00E8B509 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (2113, 1004, N'Orders', 0, CAST(0x0000A6FC00E8C942 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (2114, 1004, N'Food', 0, CAST(0x0000A6FC00E8C957 AS DateTime), 1)
INSERT [dbo].[Permission] ([Id], [RoleId], [Code], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (2115, 1004, N'Table', 0, CAST(0x0000A6FC00E8C96C AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (8, N'Admin', 1, CAST(0x0000A6C100D90755 AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (9, N'System', 0, CAST(0x0000A6C30053CBAF AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1004, N'Staff', 0, CAST(0x0000A6FC00E8C92D AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1005, N'Service', 1, CAST(0x0000A6C2011BD015 AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [Name], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1006, N'teét', 1, CAST(0x0000A6FC00E8BC2B AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Address', N'212-214, Nguyễn Đình Chiểu, Phường 6, Quận 3, Tp. Hcm', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'BookingLimit', N'7', N'System    ', CAST(0x0000A6EA00015DB1 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Discount', N'10', N'System    ', CAST(0x0000A6EA00015DB1 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Email', N'nnam2404@gmail.com', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Live', N'https://www.paypal.com/cgi-bin/webscr', N'Paypal    ', CAST(0x0000A6D800000000 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Mode', N'Sandbox', N'Paypal    ', CAST(0x0000A6FF01855BE4 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'PaypalEmail', N'nnam2404-facilitator@gmail.com', N'Paypal    ', CAST(0x0000A6FF01855BE4 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'PDTToken', N'NPlekmJ8aHBiBGozrFpd7tjRKXqbXy_ZD4VkxAJe145f8XGlw971gOzOonu', N'Paypal    ', CAST(0x0000A6FF01855BE4 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Phone', N'0978067290', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Sandbox', N'https://www.sandbox.paypal.com/cgi-bin/webscr', N'Paypal    ', CAST(0x0000A6D0017B0740 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'TableImage', N'table', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'TablesString', N'9,10,11,12,13,14,', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Tax', N'12', N'System    ', CAST(0x0000A6EA00015DB1 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'TimeDistance', N'6', N'System    ', CAST(0x0000A6EA00015DB1 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'Username', N'nnam2404-facilitator@gmail.com', N'Paypal    ', CAST(0x0000A6C1003C7A7A AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'WebLongName', N'TableBooking', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
INSERT [dbo].[Setting] ([Key], [Value], [Type], [LastUpdate], [UpdateByAdminId]) VALUES (N'WebShortName', N'BTL', N'WebContent', CAST(0x0000A7000013C582 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Table] ON 

INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (9, 1011, 2, N'1 - 1', 4, 1, 0, CAST(0x0000A6C800046415 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (10, 1011, 2, N'1 - 2', 6, 1, 0, CAST(0x0000A6C60106A2D1 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (11, 1011, 2, N'1 - 3', 6, 1, 0, CAST(0x0000A6C60106C066 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (12, 1011, 2, N'1 - 4', 4, 1, 0, CAST(0x0000A6C60106CC12 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (13, 1011, 2, N'1 - 5', 6, 1, 0, CAST(0x0000A6C60106E9D0 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (14, 1011, 2, N'1 - 6', 4, 1, 0, CAST(0x0000A6C60106FB97 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (15, 1011, 1, N'1 - 7', 6, 0, 0, CAST(0x0000A6C7016C206F AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (16, 1011, 1, N'1 - 8', 6, 1, 0, CAST(0x0000A6C601072220 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (17, 1012, 2, N'2 - 1', 6, 1, 0, CAST(0x0000A6C7016B7230 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (18, 1012, 2, N'2 - 2', 8, 1, 0, CAST(0x0000A6C7016B83AF AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (19, 1012, 1, N'2 - 3', 4, 1, 0, CAST(0x0000A6C7016B95A7 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (20, 1012, 2, N'2 - 4', 10, 1, 0, CAST(0x0000A6C7016BA716 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (21, 1012, 2, N'2 - 5', 6, 1, 0, CAST(0x0000A6C7016BB81E AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (22, 1012, 1, N'2 - 6', 4, 1, 0, CAST(0x0000A6C7016BC677 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (23, 1012, 2, N'2 - 7', 8, 1, 0, CAST(0x0000A6C7016BD8E3 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (24, 1012, 2, N'2 - 8', 6, 1, 0, CAST(0x0000A6C7016BE98F AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (25, 1011, 1, N'1 - 9', 2, 1, 0, CAST(0x0000A6C7018AEB01 AS DateTime), 1)
INSERT [dbo].[Table] ([Id], [FloorId], [TypeId], [Name], [Seats], [Active], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (26, 1012, 1, N'2 - 9', 4, 1, 0, CAST(0x0000A6C7018B2250 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Table] OFF
SET IDENTITY_INSERT [dbo].[TableType] ON 

INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (1, N'Vip', CAST(100.00 AS Decimal(10, 2)), 0, CAST(0x0000A6C80004861E AS DateTime), 1)
INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (2, N'Normal', CAST(50.00 AS Decimal(10, 2)), 0, CAST(0x0000A6C100BE46F6 AS DateTime), 1)
INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (3, N'Diamon', CAST(2.00 AS Decimal(10, 2)), 1, CAST(0x0000A6C100A127FF AS DateTime), 1)
INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (4, N'Free', CAST(1.00 AS Decimal(10, 2)), 1, CAST(0x0000A6FC00D05E84 AS DateTime), 1)
INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (5, N'Free', CAST(20.00 AS Decimal(10, 2)), 1, CAST(0x0000A6FC00D33D03 AS DateTime), 1)
INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (6, N'456', CAST(0.00 AS Decimal(10, 2)), 1, CAST(0x0000A6FF0177FB6D AS DateTime), 1)
INSERT [dbo].[TableType] ([Id], [Name], [DepositPrice], [Deleted], [LastUpdate], [UpdateByAdminId]) VALUES (7, N'456', CAST(0.00 AS Decimal(10, 2)), 1, CAST(0x0000A6FF0188772C AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TableType] OFF
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_admin_role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_admin_role]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orders_details_food] FOREIGN KEY([FoodId])
REFERENCES [dbo].[Food] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_orders_details_food]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orders_details_orders] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_orders_details_orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orders_details_table] FOREIGN KEY([TableId])
REFERENCES [dbo].[Table] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_orders_details_table]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Admin] FOREIGN KEY([PayeeId])
REFERENCES [dbo].[Admin] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Admin]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_orders_customer]
GO
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_permission_role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_permission_role]
GO
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK_Setting_Admin] FOREIGN KEY([UpdateByAdminId])
REFERENCES [dbo].[Admin] ([Id])
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK_Setting_Admin]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_table_floor] FOREIGN KEY([FloorId])
REFERENCES [dbo].[Floor] ([Id])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_table_floor]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_table_table_type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TableType] ([Id])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_table_table_type]
GO
