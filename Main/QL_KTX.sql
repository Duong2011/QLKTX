USE [master]
GO
/****** Object:  Database [qlktx]    Script Date: 12/6/2023 9:19:43 PM ******/
CREATE DATABASE [qlktx]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlktx', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\qlktx.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlktx_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\qlktx_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qlktx] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlktx].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlktx] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlktx] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlktx] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlktx] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlktx] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlktx] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlktx] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [qlktx] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlktx] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlktx] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlktx] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlktx] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlktx] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlktx] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlktx] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlktx] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlktx] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlktx] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlktx] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlktx] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlktx] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlktx] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlktx] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlktx] SET RECOVERY FULL 
GO
ALTER DATABASE [qlktx] SET  MULTI_USER 
GO
ALTER DATABASE [qlktx] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlktx] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlktx] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlktx] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlktx', N'ON'
GO
USE [qlktx]
GO
/****** Object:  Table [dbo].[DanhMucManHinh]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucManHinh](
	[Ma_Man_Hinh] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Man_Hinh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Man_Hinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaDien]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaDien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[so_bat_dau] [int] NULL,
	[Gia] [decimal](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaNuoc]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaNuoc](
	[ID] [int] NOT NULL,
	[Gia] [decimal](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonDienNuoc]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDienNuoc](
	[hoa_don_id] [int] IDENTITY(1,1) NOT NULL,
	[phong_id] [int] NULL,
	[thang] [int] NULL,
	[nam] [int] NULL,
	[so_dien] [int] NULL,
	[so_khoi_nuoc] [int] NULL,
	[tong_tien] [decimal](10, 3) NULL,
	[trang_thai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[hoa_don_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDongThuePhong]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongThuePhong](
	[hop_dong_id] [int] IDENTITY(1,1) NOT NULL,
	[phong_id] [int] NULL,
	[sinh_vien_id] [int] NULL,
	[ngay_lap] [date] NULL,
	[ngay_bat_dau_thue] [date] NULL,
	[ngay_ket_thuc_thue] [date] NULL,
	[trangthai] [nvarchar](50) NULL,
	[tienthu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hop_dong_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[loai_phong_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_loai_phong] [nvarchar](50) NULL,
	[gia_phong] [decimal](10, 3) NULL,
	[so_nguoi_toi_da] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[loai_phong_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[nguoi_dung_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_nguoi_dung] [nvarchar](50) NULL,
	[mat_khau] [nvarchar](255) NULL,
	[trang_thai] [bit] NOT NULL,
	[vai_tro_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nguoi_dung_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[Ma_Vai_Tro] [int] NULL,
	[Ma_Man_Hinh] [int] NULL,
	[Co_Quyen] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[phong_id] [int] IDENTITY(1,1) NOT NULL,
	[so_phong] [nvarchar](20) NULL,
	[tang] [int] NULL,
	[trang_thai] [nvarchar](50) NULL,
	[loai_phong_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[phong_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[sinh_vien_id] [int] IDENTITY(1,1) NOT NULL,
	[nguoi_dung_id] [int] NULL,
	[ma_sinh_vien] [nvarchar](20) NULL,
	[ho_ten] [nvarchar](100) NULL,
	[ngay_sinh] [date] NULL,
	[CCCD] [nchar](12) NULL,
	[gioi_tinh] [nvarchar](10) NULL,
	[so_dien_thoai] [nvarchar](20) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[email] [nvarchar](100) NULL,
	[trang_thai] [nvarchar](20) NULL,
	[so_phong] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[sinh_vien_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuCo]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuCo](
	[su_co_id] [int] IDENTITY(1,1) NOT NULL,
	[phong_id] [int] NULL,
	[ngay_bao_cao] [date] NULL,
	[mo_ta_su_co] [nvarchar](max) NULL,
	[trang_thai_xu_ly] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[su_co_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 12/6/2023 9:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[vai_tro_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_vai_tro] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[vai_tro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DanhMucManHinh] ON 

INSERT [dbo].[DanhMucManHinh] ([Ma_Man_Hinh], [Ten_Man_Hinh]) VALUES (1, N'Màn hình 1')
INSERT [dbo].[DanhMucManHinh] ([Ma_Man_Hinh], [Ten_Man_Hinh]) VALUES (2, N'Màn hình 2')
INSERT [dbo].[DanhMucManHinh] ([Ma_Man_Hinh], [Ten_Man_Hinh]) VALUES (3, N'Màn hình 3')
INSERT [dbo].[DanhMucManHinh] ([Ma_Man_Hinh], [Ten_Man_Hinh]) VALUES (4, N'Màn hình 4')
INSERT [dbo].[DanhMucManHinh] ([Ma_Man_Hinh], [Ten_Man_Hinh]) VALUES (5, N'Màn hình 5')
SET IDENTITY_INSERT [dbo].[DanhMucManHinh] OFF
SET IDENTITY_INSERT [dbo].[GiaDien] ON 

INSERT [dbo].[GiaDien] ([ID], [so_bat_dau], [Gia]) VALUES (1, 0, CAST(1.728 AS Decimal(10, 3)))
INSERT [dbo].[GiaDien] ([ID], [so_bat_dau], [Gia]) VALUES (2, 50, CAST(1.786 AS Decimal(10, 3)))
INSERT [dbo].[GiaDien] ([ID], [so_bat_dau], [Gia]) VALUES (3, 100, CAST(2.074 AS Decimal(10, 3)))
INSERT [dbo].[GiaDien] ([ID], [so_bat_dau], [Gia]) VALUES (4, 200, CAST(2.612 AS Decimal(10, 3)))
INSERT [dbo].[GiaDien] ([ID], [so_bat_dau], [Gia]) VALUES (5, 300, CAST(2.919 AS Decimal(10, 3)))
INSERT [dbo].[GiaDien] ([ID], [so_bat_dau], [Gia]) VALUES (6, 400, CAST(3.015 AS Decimal(10, 3)))
SET IDENTITY_INSERT [dbo].[GiaDien] OFF
INSERT [dbo].[GiaNuoc] ([ID], [Gia]) VALUES (1, CAST(1.728 AS Decimal(10, 3)))
SET IDENTITY_INSERT [dbo].[HoaDonDienNuoc] ON 

INSERT [dbo].[HoaDonDienNuoc] ([hoa_don_id], [phong_id], [thang], [nam], [so_dien], [so_khoi_nuoc], [tong_tien], [trang_thai]) VALUES (7, 3, 1, 2023, 10, 10, CAST(35.140 AS Decimal(10, 3)), N'Chưa thanh toán')
INSERT [dbo].[HoaDonDienNuoc] ([hoa_don_id], [phong_id], [thang], [nam], [so_dien], [so_khoi_nuoc], [tong_tien], [trang_thai]) VALUES (8, 26, 1, 2023, 12, 8, CAST(35.256 AS Decimal(10, 3)), N'Chưa thanh toán')
INSERT [dbo].[HoaDonDienNuoc] ([hoa_don_id], [phong_id], [thang], [nam], [so_dien], [so_khoi_nuoc], [tong_tien], [trang_thai]) VALUES (9, 27, 1, 2023, 12, 8, CAST(35.256 AS Decimal(10, 3)), N'Chưa thanh toán')
SET IDENTITY_INSERT [dbo].[HoaDonDienNuoc] OFF
SET IDENTITY_INSERT [dbo].[HopDongThuePhong] ON 

INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (14, 3, 18, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x34460B00 AS Date), N'Đã thanh toán', 2000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (15, 3, 19, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x54460B00 AS Date), N'Đã thanh toán', 2000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (16, 26, 20, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x35460B00 AS Date), N'Đã thanh toán', 2000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (17, 26, 21, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x3B460B00 AS Date), N'Đã thanh toán', 2000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (18, 27, 22, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x33460B00 AS Date), N'Đã thanh toán', 2000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (19, 27, 23, CAST(0xD8440B00 AS Date), CAST(0xE1440B00 AS Date), CAST(0xD9450B00 AS Date), N'Đã thanh toán', 4000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (20, 27, 24, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x34460B00 AS Date), N'Đã thanh toán', 2000000)
INSERT [dbo].[HopDongThuePhong] ([hop_dong_id], [phong_id], [sinh_vien_id], [ngay_lap], [ngay_bat_dau_thue], [ngay_ket_thuc_thue], [trangthai], [tienthu]) VALUES (21, 28, 25, CAST(0x2B460B00 AS Date), CAST(0x2B460B00 AS Date), CAST(0x3B460B00 AS Date), N'Đã thanh toán', 2000000)
SET IDENTITY_INSERT [dbo].[HopDongThuePhong] OFF
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([loai_phong_id], [ten_loai_phong], [gia_phong], [so_nguoi_toi_da]) VALUES (1, N'2 người', CAST(2000000.000 AS Decimal(10, 3)), 2)
INSERT [dbo].[LoaiPhong] ([loai_phong_id], [ten_loai_phong], [gia_phong], [so_nguoi_toi_da]) VALUES (2, N'4 người', CAST(3500000.000 AS Decimal(10, 3)), 4)
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (15, N'admin01', N'123', 1, 1)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (16, N'sv007', N'0354587847', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (17, N'sv008', N'0357685754', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (19, N'sv001', N'0365347643', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (21, N'sv002', N'0364657365', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (22, N'sv003', N'0363785675', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (23, N'sv004', N'0345464376', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (24, N'sv005', N'0354768474', 1, 2)
INSERT [dbo].[NguoiDung] ([nguoi_dung_id], [ten_nguoi_dung], [mat_khau], [trang_thai], [vai_tro_id]) VALUES (25, N'sv006', N'0354576548', 1, 2)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
INSERT [dbo].[PhanQuyen] ([Ma_Vai_Tro], [Ma_Man_Hinh], [Co_Quyen]) VALUES (1, 1, 1)
INSERT [dbo].[PhanQuyen] ([Ma_Vai_Tro], [Ma_Man_Hinh], [Co_Quyen]) VALUES (1, 2, 1)
INSERT [dbo].[PhanQuyen] ([Ma_Vai_Tro], [Ma_Man_Hinh], [Co_Quyen]) VALUES (1, 3, 1)
INSERT [dbo].[PhanQuyen] ([Ma_Vai_Tro], [Ma_Man_Hinh], [Co_Quyen]) VALUES (2, 1, 1)
INSERT [dbo].[PhanQuyen] ([Ma_Vai_Tro], [Ma_Man_Hinh], [Co_Quyen]) VALUES (2, 2, 1)
INSERT [dbo].[PhanQuyen] ([Ma_Vai_Tro], [Ma_Man_Hinh], [Co_Quyen]) VALUES (2, 3, 1)
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (1, N'101', 1, N'Đang ở', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (2, N'102', 1, N'Trống', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (3, N'103', 1, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (4, N'104', 1, N'Trống', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (5, N'105', 1, N'Trống', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (26, N'106', 1, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (27, N'107', 1, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (28, N'108', 1, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (29, N'201', 2, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (30, N'202', 1, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (31, N'203', 2, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (32, N'204', 2, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (33, N'205', 2, N'Trống', 1)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (34, N'206', 2, N'Trống', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (35, N'207', 2, N'Trống', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (37, N'208', 2, N'Trống', 2)
INSERT [dbo].[Phong] ([phong_id], [so_phong], [tang], [trang_thai], [loai_phong_id]) VALUES (38, N'209', 2, N'Trống', 2)
SET IDENTITY_INSERT [dbo].[Phong] OFF
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (18, NULL, N'sv001', N'Trương Thành Trung', CAST(0x35280B00 AS Date), N'032647567567', N'Nam', N'0365347643', N'Long An', N'trung@gmail.com', N'Đang ở', N'103')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (19, NULL, N'sv002', N'Lê Thành Tâm', CAST(0x19280B00 AS Date), N'034734546371', N'Nam', N'0364657365', N'Tây Ninh', N'tam333@gmail.com', N'Đang ở', N'103')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (20, NULL, N'sv003', N'Lê Thành Tân', CAST(0xDC270B00 AS Date), N'083467536564', N'Nam', N'0363785675', N'Tây Ninh', N'tan476d@gmail.com', N'Đang ở', N'106')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (21, NULL, N'sv004', N'Nguyễn Nương Hồng Thắm', CAST(0x19280B00 AS Date), N'094859478575', N'Nữ', N'0345464376', N'Lâm Đồng', N'thamfg58@gmail.com', N'Đang ở', N'106')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (22, NULL, N'sv005', N'Nguyễn Thành Tân', CAST(0x45280B00 AS Date), N'037467346756', N'Nam', N'0354768474', N'Đồng Tháp', N'tan847bfd@gmail.com', N'Đang ở', N'107')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (23, NULL, N'sv006', N'Nguyễn Gia Kim', CAST(0x0C270B00 AS Date), N'037657465886', N'Nữ', N'0354576548', N'Đồng Tháp', N'kimgyshghf@gmail.com', N'Ngưng ở', NULL)
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (24, NULL, N'sv007', N'Trương Cảnh Trường', CAST(0x9D270B00 AS Date), N'034756737855', N'Nam', N'0354587847', N'Cần Thơ', N'truonghghjg@gmail.com', N'Đang ở', N'107')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (25, NULL, N'sv008', N'Nguyễn Đức An', CAST(0x97270B00 AS Date), N'035787649896', N'Nam', N'0357685754', N'Hải Phòng', N'andaica7@gmail.com', N'Đang ở', N'108')
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (26, NULL, N'sv009', N'Võ Hoàng Dương', CAST(0x3B280B00 AS Date), N'098575467567', N'Nam', N'0344568789', N'Hà Tĩnh', N'duongweb4@gmail.com', N'Chờ duyệt', NULL)
INSERT [dbo].[SinhVien] ([sinh_vien_id], [nguoi_dung_id], [ma_sinh_vien], [ho_ten], [ngay_sinh], [CCCD], [gioi_tinh], [so_dien_thoai], [dia_chi], [email], [trang_thai], [so_phong]) VALUES (27, NULL, N'sv010', N'Võ Mỹ Nương', CAST(0x0E270B00 AS Date), N'024552642783', N'Nữ', N'0346534673', N'Đồng Nai', N'mynuongcute22@gmail.com', N'Chờ duyệt', NULL)
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
SET IDENTITY_INSERT [dbo].[VaiTro] ON 

INSERT [dbo].[VaiTro] ([vai_tro_id], [ten_vai_tro]) VALUES (1, N'admin')
INSERT [dbo].[VaiTro] ([vai_tro_id], [ten_vai_tro]) VALUES (2, N'sinh_viên')
SET IDENTITY_INSERT [dbo].[VaiTro] OFF
ALTER TABLE [dbo].[HoaDonDienNuoc]  WITH CHECK ADD FOREIGN KEY([phong_id])
REFERENCES [dbo].[Phong] ([phong_id])
GO
ALTER TABLE [dbo].[HopDongThuePhong]  WITH CHECK ADD FOREIGN KEY([phong_id])
REFERENCES [dbo].[Phong] ([phong_id])
GO
ALTER TABLE [dbo].[HopDongThuePhong]  WITH CHECK ADD FOREIGN KEY([sinh_vien_id])
REFERENCES [dbo].[SinhVien] ([sinh_vien_id])
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD FOREIGN KEY([vai_tro_id])
REFERENCES [dbo].[VaiTro] ([vai_tro_id])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([Ma_Man_Hinh])
REFERENCES [dbo].[DanhMucManHinh] ([Ma_Man_Hinh])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([Ma_Vai_Tro])
REFERENCES [dbo].[VaiTro] ([vai_tro_id])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([loai_phong_id])
REFERENCES [dbo].[LoaiPhong] ([loai_phong_id])
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD FOREIGN KEY([nguoi_dung_id])
REFERENCES [dbo].[NguoiDung] ([nguoi_dung_id])
GO
ALTER TABLE [dbo].[SuCo]  WITH CHECK ADD FOREIGN KEY([phong_id])
REFERENCES [dbo].[Phong] ([phong_id])
GO
USE [master]
GO
ALTER DATABASE [qlktx] SET  READ_WRITE 
GO
