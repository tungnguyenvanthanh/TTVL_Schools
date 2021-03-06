USE [TTVL_Schools]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBoMon] [int] IDENTITY(1,1) NOT NULL,
	[TenBoMon] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[MaBoMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaDiem] [int] IDENTITY(1,1) NOT NULL,
	[MaSinhVien] [nvarchar](50) NULL,
	[MaGiangVien] [nvarchar](50) NULL,
	[MaNM] [int] NULL,
	[DiemThi] [int] NULL,
	[QuaMon] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[MaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[MaGiangVien] [nvarchar](50) NOT NULL,
	[MaQuyDanh] [int] NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[CMND] [nvarchar](50) NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](500) NULL,
	[DiaChiThuongTru] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaChucVu] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [nvarchar](50) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[MaNganh] [int] NULL,
	[GiangVienChuNhiem] [nvarchar](50) NULL,
	[TimeBatDau] [datetime] NULL,
	[TimeKetThuc] [datetime] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[LyThuyet] [int] NULL,
	[ThucHanh] [int] NULL,
	[SoTinChi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[MaBoMon] [int] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNganh] [int] IDENTITY(1,1) NOT NULL,
	[TenNganh] [nvarchar](100) NULL,
	[MaKhoa] [int] NULL,
	[MaMonHoc] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nganh] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nganh_MonHoc]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh_MonHoc](
	[MaNM] [int] IDENTITY(1,1) NOT NULL,
	[MaNganh] [int] NULL,
	[MaMonHoc] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nganh_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaNM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaQuyDanh] [int] NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[CMND] [nvarchar](50) NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](500) NULL,
	[DiaChiThuongTru] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaChucVu] [int] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[QuanLy1] [nvarchar](50) NULL,
	[QuanLy2] [nvarchar](50) NULL,
	[Lock] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyDanh]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDanh](
	[MaQuyDanh] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyDanh] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuyDanh] PRIMARY KEY CLUSTERED 
(
	[MaQuyDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 2017/03/03 11:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[MaQuyDanh] [int] NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[CMND] [nvarchar](50) NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](500) NULL,
	[DiaChiThuongTru] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaLop] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayUpdate] [datetime] NULL,
	[NhanVienUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (1, N'Admin', NULL, NULL, NULL)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (2, N'Giám đốc', NULL, NULL, NULL)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (3, N'Nhân viên', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaQuyDanh], [HoVaTen], [GioiTinh], [NgaySinh], [CMND], [NgayCap], [NoiCap], [QueQuan], [DiaChiThuongTru], [Email], [SoDienThoai], [MaChucVu], [TaiKhoan], [MatKhau], [GhiChu], [QuanLy1], [QuanLy2], [Lock], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (N'admin', NULL, N'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'admin', N'dbe1f261fa5348b79904e0ad7e1e97f9', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaQuyDanh], [HoVaTen], [GioiTinh], [NgaySinh], [CMND], [NgayCap], [NoiCap], [QueQuan], [DiaChiThuongTru], [Email], [SoDienThoai], [MaChucVu], [TaiKhoan], [MatKhau], [GhiChu], [QuanLy1], [QuanLy2], [Lock], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (N'NV-03032017-0002', 2, N'Nguyễn Thị Hợi', N'Nữ', CAST(0x0000809200000000 AS DateTime), N'123123123', CAST(0x00009BA500000000 AS DateTime), N'Hông biết', N'Cũng hông biết luôn', N'Biết mà éo nói', N'nguyenthihoi@gmail.com', N'0123123123', 3, N'nguyenthihoi', N'18e498a8d3701570ee8654bd9d00452b', NULL, N'NV-05022017-0001', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaQuyDanh], [HoVaTen], [GioiTinh], [NgaySinh], [CMND], [NgayCap], [NoiCap], [QueQuan], [DiaChiThuongTru], [Email], [SoDienThoai], [MaChucVu], [TaiKhoan], [MatKhau], [GhiChu], [QuanLy1], [QuanLy2], [Lock], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (N'NV-05022017-0001', 1, N'Nguyễn Văn Thanh Tùng', N'Nam', CAST(0x0000821E00000000 AS DateTime), N'999999999', CAST(0x0000A71100000000 AS DateTime), N'Đồng Tháp', N'Châu Thành, Đồng Tháp', N'Tp. Hồ Chí Minh', N'thanhtungttvl@gmail.com', N'01653522796', 2, N'thanhtung', N'bf50345ccfa78d0319462e62c7a7b4f5', NULL, N'admin', NULL, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[QuyDanh] ON 

INSERT [dbo].[QuyDanh] ([MaQuyDanh], [TenQuyDanh], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (1, N'Ông', NULL, NULL, NULL)
INSERT [dbo].[QuyDanh] ([MaQuyDanh], [TenQuyDanh], [NgayTao], [NgayUpdate], [NhanVienUpdate]) VALUES (2, N'Bà', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[QuyDanh] OFF
ALTER TABLE [dbo].[BoMon] ADD  CONSTRAINT [DF_BoMon_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChucVu] ADD  CONSTRAINT [DF_ChucVu_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GiangVien] ADD  CONSTRAINT [DF_GiangVien_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Khoa] ADD  CONSTRAINT [DF_Khoa_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Lop] ADD  CONSTRAINT [DF_Lop_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF_MonHoc_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Nganh] ADD  CONSTRAINT [DF_Nganh_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Nganh_MonHoc] ADD  CONSTRAINT [DF_Nganh_MonHoc_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[QuyDanh] ADD  CONSTRAINT [DF_QuyDanh_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF_SinhVien_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_GiangVien] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GiangVien] ([MaGiangVien])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_GiangVien]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_Nganh_MonHoc] FOREIGN KEY([MaNM])
REFERENCES [dbo].[Nganh_MonHoc] ([MaNM])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_Nganh_MonHoc]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_SinhVien] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SinhVien] ([MaSinhVien])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_SinhVien]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_ChucVu]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_QuyDanh] FOREIGN KEY([MaQuyDanh])
REFERENCES [dbo].[QuyDanh] ([MaQuyDanh])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_QuyDanh]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_GiangVien] FOREIGN KEY([GiangVienChuNhiem])
REFERENCES [dbo].[GiangVien] ([MaGiangVien])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_GiangVien]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Nganh] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[Nganh] ([MaNganh])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Nganh]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_BoMon] FOREIGN KEY([MaBoMon])
REFERENCES [dbo].[BoMon] ([MaBoMon])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_BoMon]
GO
ALTER TABLE [dbo].[Nganh]  WITH CHECK ADD  CONSTRAINT [FK_Nganh_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[Nganh] CHECK CONSTRAINT [FK_Nganh_Khoa]
GO
ALTER TABLE [dbo].[Nganh]  WITH CHECK ADD  CONSTRAINT [FK_Nganh_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[Nganh] CHECK CONSTRAINT [FK_Nganh_MonHoc]
GO
ALTER TABLE [dbo].[Nganh_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_Nganh_MonHoc_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[Nganh_MonHoc] CHECK CONSTRAINT [FK_Nganh_MonHoc_MonHoc]
GO
ALTER TABLE [dbo].[Nganh_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_Nganh_MonHoc_Nganh] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[Nganh] ([MaNganh])
GO
ALTER TABLE [dbo].[Nganh_MonHoc] CHECK CONSTRAINT [FK_Nganh_MonHoc_Nganh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien] FOREIGN KEY([QuanLy1])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien1] FOREIGN KEY([QuanLy2])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien1]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_QuyDanh] FOREIGN KEY([MaQuyDanh])
REFERENCES [dbo].[QuyDanh] ([MaQuyDanh])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_QuyDanh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_QuyDanh] FOREIGN KEY([MaQuyDanh])
REFERENCES [dbo].[QuyDanh] ([MaQuyDanh])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_QuyDanh]
GO
