USE [QLTV]
GO
ALTER TABLE [dbo].[TaiLieu] DROP CONSTRAINT [FK__TaiLieu__MaTheLo__36B12243]
GO
ALTER TABLE [dbo].[TaiLieu] DROP CONSTRAINT [FK__TaiLieu__MaTG__35BCFE0A]
GO
ALTER TABLE [dbo].[TaiLieu] DROP CONSTRAINT [FK__TaiLieu__MaNXB__37A5467C]
GO
ALTER TABLE [dbo].[PhieuMuon] DROP CONSTRAINT [FK__PhieuMuon__MaNV__32E0915F]
GO
ALTER TABLE [dbo].[PhieuMuon] DROP CONSTRAINT [FK__PhieuMuon__MaDG__31EC6D26]
GO
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK__NhanVien__MaCV__2F10007B]
GO
ALTER TABLE [dbo].[CTPhieuMuon] DROP CONSTRAINT [FK__CTPhieuMuo__MaPM__398D8EEE]
GO
ALTER TABLE [dbo].[CTPhieuMuon] DROP CONSTRAINT [FK__CTPhieuMu__MaTai__3A81B327]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__MaNV__3D5E1FD2]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__MaCV__3E52440B]
GO
ALTER TABLE [dbo].[TheLoai] DROP CONSTRAINT [DF__TheLoai__TenTheL__286302EC]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TheLoai]') AND type in (N'U'))
DROP TABLE [dbo].[TheLoai]
GO
/****** Object:  Table [dbo].[TaiLieu]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiLieu]') AND type in (N'U'))
DROP TABLE [dbo].[TaiLieu]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TacGia]') AND type in (N'U'))
DROP TABLE [dbo].[TacGia]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuon]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuMuon]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhaXuatBan]') AND type in (N'U'))
DROP TABLE [dbo].[NhaXuatBan]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocGia]') AND type in (N'U'))
DROP TABLE [dbo].[DocGia]
GO
/****** Object:  Table [dbo].[CTPhieuMuon]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CTPhieuMuon]') AND type in (N'U'))
DROP TABLE [dbo].[CTPhieuMuon]
GO
/****** Object:  Table [dbo].[Chucvu]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chucvu]') AND type in (N'U'))
DROP TABLE [dbo].[Chucvu]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/8/2021 10:45:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [QLTV]    Script Date: 11/8/2021 10:45:08 PM ******/
DROP DATABASE [QLTV]
GO
/****** Object:  Database [QLTV]    Script Date: 11/8/2021 10:45:08 PM ******/
CREATE DATABASE [QLTV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLTV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLTV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLTV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTV] SET  MULTI_USER 
GO
ALTER DATABASE [QLTV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTV', N'ON'
GO
ALTER DATABASE [QLTV] SET QUERY_STORE = OFF
GO
USE [QLTV]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/8/2021 10:45:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[TenAccount] [varchar](20) NOT NULL,
	[MKAccount] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaCV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chucvu]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chucvu](
	[MaCV] [varchar](10) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuMuon]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuMuon](
	[MaPM] [varchar](10) NOT NULL,
	[MaTaiLieu] [varchar](10) NOT NULL,
	[NgayMuon] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[TinhTrang] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [varchar](10) NOT NULL,
	[TenDG] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[Lop] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
	[MaCV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [varchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPM] [varchar](10) NOT NULL,
	[MaDG] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [varchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiLieu]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiLieu](
	[MaTaiLieu] [varchar](10) NOT NULL,
	[TenTaiLieu] [nvarchar](50) NULL,
	[NamXB] [int] NULL,
	[MaTG] [varchar](10) NOT NULL,
	[MaTheLoai] [varchar](10) NOT NULL,
	[MaNXB] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 11/8/2021 10:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [varchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([TenAccount], [MKAccount], [MaNV], [MaCV]) VALUES (N'dudat', N'123456', N'NV02', N'QL')
INSERT [dbo].[Account] ([TenAccount], [MKAccount], [MaNV], [MaCV]) VALUES (N'duongquy', N'123456', N'NV04', N'NV')
INSERT [dbo].[Account] ([TenAccount], [MKAccount], [MaNV], [MaCV]) VALUES (N'nguyenthiet', N'123456', N'NV03', N'NV')
INSERT [dbo].[Account] ([TenAccount], [MKAccount], [MaNV], [MaCV]) VALUES (N'phunghoc', N'050701', N'NV01', N'AD')
GO
INSERT [dbo].[Chucvu] ([MaCV], [TenCV]) VALUES (N'AD', N'Admin')
INSERT [dbo].[Chucvu] ([MaCV], [TenCV]) VALUES (N'NV', N'Nhân viên')
INSERT [dbo].[Chucvu] ([MaCV], [TenCV]) VALUES (N'QL', N'Quản lý')
GO
INSERT [dbo].[CTPhieuMuon] ([MaPM], [MaTaiLieu], [NgayMuon], [NgayTra], [TinhTrang]) VALUES (N'PM1', N'TL3', CAST(N'2021-04-04T00:00:00.000' AS DateTime), CAST(N'2021-04-26T00:00:00.000' AS DateTime), N'RÁCH NHẸ')
INSERT [dbo].[CTPhieuMuon] ([MaPM], [MaTaiLieu], [NgayMuon], [NgayTra], [TinhTrang]) VALUES (N'PM2', N'TL4', CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), N'CŨ')
INSERT [dbo].[CTPhieuMuon] ([MaPM], [MaTaiLieu], [NgayMuon], [NgayTra], [TinhTrang]) VALUES (N'PM3', N'TL5', CAST(N'2021-08-26T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), N'TỐT')
INSERT [dbo].[CTPhieuMuon] ([MaPM], [MaTaiLieu], [NgayMuon], [NgayTra], [TinhTrang]) VALUES (N'PM4', N'TL1', CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'MỚI')
INSERT [dbo].[CTPhieuMuon] ([MaPM], [MaTaiLieu], [NgayMuon], [NgayTra], [TinhTrang]) VALUES (N'PM5', N'TL2', CAST(N'2021-02-15T00:00:00.000' AS DateTime), CAST(N'2021-04-04T00:00:00.000' AS DateTime), N'TỐT')
INSERT [dbo].[CTPhieuMuon] ([MaPM], [MaTaiLieu], [NgayMuon], [NgayTra], [TinhTrang]) VALUES (N'PM6', N'TL7', CAST(N'2021-11-06T00:00:00.000' AS DateTime), CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG1', N'Phạm Ngọc Hải', CAST(N'2001-05-05T00:00:00.000' AS DateTime), N'Nam', N'C1')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG2', N'Phạm Hải NGọc', CAST(N'2003-06-07T00:00:00.000' AS DateTime), N'Nam', N'B5')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG3', N'Phạm Minh Hoang', CAST(N'2001-01-02T00:00:00.000' AS DateTime), N'Nam', N'A2')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG4', N'Nguyễn Thanh Hải', CAST(N'2012-11-12T00:00:00.000' AS DateTime), N'Nữ', N'D3')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG5', N'Nguyễn Thị Lý', CAST(N'2010-01-10T00:00:00.000' AS DateTime), N'Nữ', N'E1')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG6', N'Nguyễn Minh Tú', CAST(N'2001-11-06T00:00:00.000' AS DateTime), N'Nam', N'B5')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [Lop]) VALUES (N'DG7', N'Lý Hạo Nam', CAST(N'2001-07-05T00:00:00.000' AS DateTime), N'Nam', N'19DTHB5')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV01', N'Phùng Đại Học	', CAST(N'2021-07-05T00:00:00.000' AS DateTime), N'Nam', N'Q1', N'0123456789', N'AD')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV02', N'Trịnh Dư Đạt', CAST(N'2021-11-03T00:00:00.000' AS DateTime), N'Nam', N'Q10', N'4444444', N'QL')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV03', N'Nguyễn Văn Thiệt', CAST(N'2021-05-06T00:00:00.000' AS DateTime), N'Nam', N'Q11', N'7777777', N'NV')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV04', N'Nguyễn Văn Quý', CAST(N'2021-05-06T00:00:00.000' AS DateTime), N'Nam', N'Q11', N'7777777', N'NV')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV05', N'Phùng Mạc Đề	', CAST(N'2021-12-13T00:00:00.000' AS DateTime), N'Nữ', N'Q8', N'0123456789', N'NV')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV06', N'Trịnh Công Sơn', CAST(N'2021-11-03T00:00:00.000' AS DateTime), N'Nam', N'Q9', N'4444444', N'QL')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV07', N'Nguyễn Thị Hoa', CAST(N'2021-05-06T00:00:00.000' AS DateTime), N'Nữ', N'Q19', N'7777777', N'NV')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaCV]) VALUES (N'NV08', N'Ngô Thanh Phi', CAST(N'1999-06-25T00:00:00.000' AS DateTime), N'Nam', N'Tăng Nhơn Phú A TP Thủ Đức', N'0903150823', N'QL')
GO
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'KD', N'Kim Đồng', N'Q3', N'111')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'ND', N'Nhân Dân', N'Q6', N'222')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'SG', N'Sài Gòn', N'Q1', N'444')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'TT', N'Tuổi Trẻ', N'Q1', N'333')
GO
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [MaNV]) VALUES (N'PM1', N'DG1', N'NV01')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [MaNV]) VALUES (N'PM2', N'DG2', N'NV02')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [MaNV]) VALUES (N'PM3', N'DG3', N'NV01')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [MaNV]) VALUES (N'PM4', N'DG4', N'NV04')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [MaNV]) VALUES (N'PM5', N'DG5', N'NV03')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [MaNV]) VALUES (N'PM6', N'DG6', N'NV04')
GO
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'DS', N'Danh Sinh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'GS', N'Giáo Sư')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'KB', N'Không biết')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'NC', N'Nam Cao')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'TH', N'Tô Hoài')
GO
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL1', N'Lập trình hướng đối tượng', 2010, N'KB', N'LT', N'ND')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL2', N'Nhập môn lập trình', 2011, N'GS', N'TL', N'TT')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL3', N'Chí Phèo', 1996, N'NC', N'GT', N'KD')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL4', N'Thiết Kế Phần Mềm', 2019, N'GS', N'LT', N'KD')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL5', N'Truyện Đô rê mon', 2002, N'KB', N'GT', N'KD')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL6', N'Dế mèn phiêu lưu kí', 2001, N'TH', N'GT', N'KD')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL7', N'Kỹ Thuật Lập Trình', 2001, N'KB', N'GT', N'SG')
INSERT [dbo].[TaiLieu] ([MaTaiLieu], [TenTaiLieu], [NamXB], [MaTG], [MaTheLoai], [MaNXB]) VALUES (N'TL8', N'Conan thám tử lừng danh', 1997, N'DS', N'DS', N'KD')
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'DS', N'Đời sống')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'GT', N'Giải trí')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'HH', N'Hài hước')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'LT', N'Lập trình')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL', N'Tài liệu')
GO
ALTER TABLE [dbo].[TheLoai] ADD  DEFAULT (N'Tên thể loại') FOR [TenTheLoai]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[Chucvu] ([MaCV])
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[CTPhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieu] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[CTPhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaPM])
REFERENCES [dbo].[PhieuMuon] ([MaPM])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[Chucvu] ([MaCV])
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiLieu]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[TaiLieu]  WITH CHECK ADD FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[TaiLieu]  WITH CHECK ADD FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
USE [master]
GO
ALTER DATABASE [QLTV] SET  READ_WRITE 
GO
