create database QLTV
go
use QLTV
go

create table DocGia
(
	MaDG varchar(10) primary key,
	TenDG nvarchar(50),
	NgaySinh datetime,
	GioiTinh nvarchar(5),
	Lop nvarchar(10)
)

go
create table TacGia
(
	MaTG varchar(10) primary key,
	TenTG nvarchar(50),
)
go
create table TheLoai
(
	MaTheLoai varchar(10) primary key,
	TenTheLoai nvarchar(20) default N'Tên thể loại',
)
go
create table NhaXuatBan
(
	MaNXB varchar(10) primary key,
	TenNXB nvarchar(50),
	DiaChi nvarchar(100),
	SDT varchar(10)
)
go
create table Chucvu
(
	MaCV varchar(10) primary key,
	TenCV nvarchar(50),
)
go
create table NhanVien
(
	MaNV varchar(10) primary key,
	TenNV nvarchar(50),
	NgaySinh datetime,
	GioiTinh nvarchar(5),
	DiaChi nvarchar(100),
	SDT varchar(10),
	MaCV varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.Chucvu(MaCV)

)
go
create table PhieuMuon
(
	MaPM varchar(10) primary key,
	MaDG varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.DocGia(MaDG),
	MaNV varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.NhanVien(MaNV),
)
go


create table TaiLieu
(
	MaTaiLieu varchar(10) primary key,
	TenTaiLieu nvarchar(50),
	NamXB int,
	MaTG varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.TacGia(MaTG),
	MaTheLoai varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.TheLoai(MaTheLoai),
	MaNXB varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.NhaXuatBan(MaNXB),
)
go
--select MaPM,TenTaiLieu,NgayMuon,NgayTra,TinhTrang from CTPhieuMuon,TaiLieu where CTPhieuMuon.MaTaiLieu=TaiLieu.MaTaiLieu
create table CTPhieuMuon
(
	MaPM varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.PhieuMuon(MaPM),
	MaTaiLieu varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.TaiLieu(MaTaiLieu),
	NgayMuon datetime,
	NgayTra datetime,
	TinhTrang nvarchar(50)
)
go

create table Account
(
	TenAccount varchar(20) primary key,
	MKAccount varchar(10) NOT NULL, 
	MaNV varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.NhanVien(MaNV),
	MaCV varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.Chucvu(MaCV)

	--MaDG varchar(10) NOT NULL FOREIGN KEY REFERENCES dbo.DocGia(MaDG),
)
--go
--drop table ChucVu
--drop table Account
--drop table TheLoai
--drop table TaiLieu
--drop table DocGia
--drop table PhieuMuon
--drop table CTPhieuMuon
--drop table TacGia
--drop table NhaXuatBan
--drop table NhanVien

--select TenTG,TenTaiLieu
--from TaiLieu A, TacGia B
--where A.MaTG = B.MaTG


--select * from TaiLieu where TenTaiLieu like '%P%'
----form tai lieu
--select MaTaiLieu,TenTaiLieu,NamXB,TenTG,TenTheLoai,TenNXB from TaiLieu,TacGia,TheLoai,NhaXuatBan where TaiLieu.MaTG=TacGia.MaTG and TaiLieu.MaTheLoai=Theloai.MaTheLoai and TaiLieu.MaNXB=NhaXuatBan.MaNXB;
----form nhan vien
--select MaNV,TenNV,NgaySinh,GioiTinh,DiaChi,SDT,TenCV from NhanVien,Chucvu where Nhanvien.MaCV=Chucvu.MaCV
-----form phieu muon
--select MaPM,TenDG,TenNV from PhieuMuon,DocGia,NhanVien where PhieuMuon.MaDG=DocGia.MaDG and PhieuMuon.MaNV=NhanVien.MaNV


---MaTheLoai, TenTheLoai
insert into TheLoai values ('DS',N'Đời sống')
insert into TheLoai values ('TL',N'Tài liệu')
insert into TheLoai values ('GT',N'Giải trí')
insert into TheLoai values ('HH',N'Hài hước')
insert into TheLoai values ('LT',N'Lập trình')
---MaTG, TenTG
insert into TacGia values ('DS',N'Danh Sinh')
insert into TacGia values ('NC',N'Nam Cao')
insert into TacGia values ('TH',N'Tô Hoài')
insert into TacGia values ('GS',N'Giáo Sư')
insert into TacGia values ('KB',N'Không biết')
---	MaNXB, TenNXB, DiaChi, SDT

insert into NhaXuatBan values ('KD',N'Kim Đồng','Q3','111')
insert into NhaXuatBan values ('ND',N'Nhân Dân','Q6','222')
insert into NhaXuatBan values ('TT',N'Tuổi Trẻ','Q1','333')
insert into NhaXuatBan values ('SG',N'Sài Gòn','Q1','444')

--MaCV TenCV
insert into Chucvu values ('AD',N'Admin')
insert into Chucvu values ('NV',N'Nhân viên')
insert into Chucvu values ('QL',N'Quản lý')


---MaNV, TenNV,NgaySinh, GioiTinh, DiaChi, SDT

insert into NhanVien values ('NV01',N'Phùng Đại Học	','12/13/2021',N'Nam',N'Q1','0123456789','AD')
insert into NhanVien values ('NV02',N'Trịnh Dư Đạt','11/3/2021',N'Nam',N'Q10','4444444','QL')
insert into NhanVien values ('NV03',N'Nguyễn Văn Thiệt','5/6/2021',N'Nam',N'Q11','7777777','NV')
insert into NhanVien values ('NV04',N'Nguyễn Văn Quý','5/6/2021',N'Nam',N'Q11','7777777','NV')
insert into NhanVien values ('NV05',N'Phùng Mạc Đề	','12/13/2021',N'Nữ',N'Q8','0123456789','NV')
insert into NhanVien values ('NV06',N'Trịnh Công Sơn','11/3/2021',N'Nam',N'Q9','4444444','QL')
insert into NhanVien values ('NV07',N'Nguyễn Thị Hoa','5/6/2021',N'Nữ',N'Q19','7777777','NV')




--TenAccount MKAccount MaNV
insert into Account values ('phunghoc', '050701', 'NV01','AD')
insert into Account values ('dudat', '123456', 'NV02','QL')
insert into Account values ('nguyenthiet', '123456', 'NV03','NV')
insert into Account values ('duongquy', '123456', 'NV04','NV')

----MaDG    TenDG    NgaySinh    GioiTinh    Lop

insert into DocGia values ('DG1',N'Phạm Ngọc Hải','5/5/2001','Nam','C1')
insert into DocGia values ('DG2',N'Phạm Hải Ngọc','6/7/2003','Nam','B5')
insert into DocGia values ('DG3',N'Phạm Minh Hoang','1/2/2001','Nam','A2')
insert into DocGia values ('DG4',N'Nguyễn Thanh Hải','11/12/2012',N'Nữ','D3')
insert into DocGia values ('DG5',N'Nguyễn Thị Lý','1/10/2010',N'Nữ','E1')

----	MaTaiLieu, TenTaiLieu, NamXB, MaTG, MaTheLoai,  MaNXB

insert into TaiLieu values ('TL1', N'Lập trình hướng đối tượng',2010, N'KB', N'LT', 'ND')
insert into TaiLieu values ('TL2', N'Nhập môn lập trình',2011, N'GS', N'TL', 'TT')
insert into TaiLieu values ('TL3', N'Chí Phèo',1996, N'NC', N'GT', 'KD')
insert into TaiLieu values ('TL4', N'Thiết Kế Phần Mềm',2019, N'GS', N'LT', 'KD')
insert into TaiLieu values ('TL5', N'Truyện Đô rê mon',2002, N'KB', N'GT', 'KD')
insert into TaiLieu values ('TL6', N'Dế mèn phiêu lưu kí',2001, N'TH', N'GT', 'KD')
insert into TaiLieu values ('TL7', N'Kỹ Thuật Lập Trình',2001, N'KB', N'GT', 'SG')




---	MaPM, MaDG, MaNV

insert into PhieuMuon values ('PM1','DG1','NV01')
insert into PhieuMuon values ('PM2','DG2','NV02')
insert into PhieuMuon values ('PM3','DG3','NV01')
insert into PhieuMuon values ('PM4','DG4','NV04')
insert into PhieuMuon values ('PM5','DG5','NV03')

-- 	MaPM 	MaTaiLieu	NgayMuon 	NgayTra	TinhTrang 
insert into CTPhieuMuon values('PM1','TL3','04/04/2021','04/26/2021',N'RÁCH NHẸ')
insert into CTPhieuMuon values('PM2','TL4','09/02/2021','09/04/2021',N'CŨ')
insert into CTPhieuMuon values('PM3','TL5','08/26/2021','09/04/2021',N'TỐT')
insert into CTPhieuMuon values('PM4','TL1','09/02/2021','09/10/2021',N'MỚI')
insert into CTPhieuMuon values('PM5','TL2','02/15/2021','04/04/2021',N'TỐT')

--select NhanVien.MaCV from Chucvu, Account, NhanVien where TenAccount='phunghoc'and Account.MaNV = NhanVien.MaNV and Chucvu.MaCV = Nhanvien.MaCV

=========================================
select * from ChucVu except select * from ChucVu where MaCV = 'AD'