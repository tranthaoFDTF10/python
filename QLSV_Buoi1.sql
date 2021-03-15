CREATE DATABASE SQLCT18011
GO
USE SQLCT18011
GO
CREATE TABLE sinhvien
(
	MSSV NVARCHAR(10) PRIMARY KEY,
	HoTenSV NVARCHAR(40),
	Ngaysinh DATE
	
)
Go
CREATE TABLE giaovien
(
	MaGV NVARCHAR(10) PRIMARY KEY,
	HoTenGV NVARCHAR(40),
	NSGV DATE
)
Go
CREATE TABLE MON
(
	MaMon NVARCHAR(10) PRIMARY KEY,
	TenMon NVARCHAR(50),
	SoTC INT,
	KhongtinhdiemTL BIT
)
Go
CREATE TABLE diem
(
	MSSV NVARCHAR(10) REFERENCES dbo.sinhvien(MSSV),
	Malop NVARCHAR(10)PRIMARY KEY,
	Diem REAL,
)
Go
CREATE TABLE LopMH
(
	Malop NVARCHAR(10) REFERENCES dbo.diem,  
	HKNH NVARCHAR(10), 
	MaMon NVARCHAR(10) REFERENCES dbo.MON,
	magv NVARCHAR(10) REFERENCES dbo.giaovien(magv),
	PRIMARY KEY(Malop,MaMon,magv)
)
Go

INSERT INTO sinhvien
VALUES ('B1910297','Tran Thanh Thao','20011109')

INSERT INTO giaovien
VALUES ('002267','Nguyen Thanh Hai','19900911')

INSERT INTO MON
VALUES ('CT180','Co so du lieu',3,1)

INSERT INTO diem
VALUES ('B1910297','CT18011',8.9)

INSERT INTO LopMH
VALUES ('CT18011','2-20-21','CT180','002267')