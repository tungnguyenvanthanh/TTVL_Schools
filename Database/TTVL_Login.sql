USE [TTVL_Login]
GO
/****** Object:  Table [dbo].[KeyPC]    Script Date: 2017/03/03 11:19:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyPC](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[KeyComputer] [nvarchar](50) NOT NULL,
	[IDKey] [int] NULL,
	[KichHoat] [bit] NULL,
	[SoLuong] [int] NULL,
	[NgayKichHoat] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[Lock] [bit] NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_KeyPC] PRIMARY KEY CLUSTERED 
(
	[KeyComputer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiKey]    Script Date: 2017/03/03 11:19:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKey](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[Loai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiKey] PRIMARY KEY CLUSTERED 
(
	[RowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PC]    Script Date: 2017/03/03 11:19:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PC](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[KeyComputer] [nvarchar](50) NULL,
	[TenMay] [nvarchar](50) NULL,
	[Lock] [bit] NULL,
	[NgayKichHoat] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_PC] PRIMARY KEY CLUSTERED 
(
	[RowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KeyPC] ON 

INSERT [dbo].[KeyPC] ([RowID], [KeyComputer], [IDKey], [KichHoat], [SoLuong], [NgayKichHoat], [NgayHetHan], [Lock], [GhiChu]) VALUES (6, N'007784f707730a187760dc1fb2082095', 2, NULL, 3, NULL, CAST(0x0000A8FD00000000 AS DateTime), 0, N'')
INSERT [dbo].[KeyPC] ([RowID], [KeyComputer], [IDKey], [KichHoat], [SoLuong], [NgayKichHoat], [NgayHetHan], [Lock], [GhiChu]) VALUES (7, N'8aae6665bc5b9376ee6fc5534fc1e768', 1, NULL, 1, NULL, CAST(0x0000A85A00000000 AS DateTime), 0, N'')
INSERT [dbo].[KeyPC] ([RowID], [KeyComputer], [IDKey], [KichHoat], [SoLuong], [NgayKichHoat], [NgayHetHan], [Lock], [GhiChu]) VALUES (2, N'e3314ac593ad107413d17c81d7572f17', 2, NULL, 4, NULL, CAST(0x0000AA0800000000 AS DateTime), 0, N'')
INSERT [dbo].[KeyPC] ([RowID], [KeyComputer], [IDKey], [KichHoat], [SoLuong], [NgayKichHoat], [NgayHetHan], [Lock], [GhiChu]) VALUES (1, N'ed81c6c157c0914282a8c01ab56caa59', 1, NULL, 1, NULL, CAST(0x0000A85A00000000 AS DateTime), 0, N'')
SET IDENTITY_INSERT [dbo].[KeyPC] OFF
SET IDENTITY_INSERT [dbo].[LoaiKey] ON 

INSERT [dbo].[LoaiKey] ([RowID], [Loai]) VALUES (1, N'Cá nhân')
INSERT [dbo].[LoaiKey] ([RowID], [Loai]) VALUES (2, N'Tập thể')
SET IDENTITY_INSERT [dbo].[LoaiKey] OFF
ALTER TABLE [dbo].[KeyPC]  WITH CHECK ADD  CONSTRAINT [FK_KeyPC_LoaiKey1] FOREIGN KEY([IDKey])
REFERENCES [dbo].[LoaiKey] ([RowID])
GO
ALTER TABLE [dbo].[KeyPC] CHECK CONSTRAINT [FK_KeyPC_LoaiKey1]
GO
ALTER TABLE [dbo].[PC]  WITH CHECK ADD  CONSTRAINT [FK_PC_KeyPC] FOREIGN KEY([KeyComputer])
REFERENCES [dbo].[KeyPC] ([KeyComputer])
GO
ALTER TABLE [dbo].[PC] CHECK CONSTRAINT [FK_PC_KeyPC]
GO
