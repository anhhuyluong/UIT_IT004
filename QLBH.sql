-- QUAN LY BAN HANG
--1. TAO CAC QUAN HE VA KHAI BAO CAC KHOA CHINH, KHOA NGOAI CUA QUAN HE, THEM DU LIEU VAO QUAN HE
CREATE TABLE KHACHHANG
(
	MAKH CHAR(4) NOT NULL,
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	DOANHSO MONEY,
	NGDK SMALLDATETIME
)
CREATE TABLE NHANVIEN
(
	MANV CHAR(4) NOT NULL,
	HOTEN VARCHAR(40),
	NGVL SMALLDATETIME,
	SODT VARCHAR(20)
)
CREATE TABLE SANPHAM
(
	MASP CHAR(4) NOT NULL,
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY
)
CREATE TABLE HOADON
(
	SOHD INT NOT NULL,
	NGHD SMALLDATETIME,
	MAKH CHAR(4),
	MANV CHAR(4),
	TRIGIA MONEY
)
CREATE TABLE CTHD
(
	SOHD INT NOT NULL,
	MASP CHAR(4) NOT NULL,
	SL INT
)

ALTER TABLE KHACHHANG
ADD CONSTRAINT PK_MAKH PRIMARY KEY (MAKH);
ALTER TABLE NHANVIEN
ADD CONSTRAINT PK_MANV PRIMARY KEY (MANV);
ALTER TABLE SANPHAM
ADD CONSTRAINT PK_MASP PRIMARY KEY (MASP);
ALTER TABLE HOADON
ADD CONSTRAINT PK_SOHD PRIMARY KEY (SOHD);
ALTER TABLE CTHD
ADD CONSTRAINT PK_CTHD PRIMARY KEY (SOHD, MASP);

ALTER TABLE HOADON
ADD CONSTRAINT FK_MAKH_HOADON
FOREIGN KEY (MAKH)
REFERENCES KHACHHANG (MAKH);

ALTER TABLE HOADON
ADD CONSTRAINT FK_MANV_HOADON
FOREIGN KEY (MANV)
REFERENCES NHANVIEN (MANV);

ALTER TABLE CTHD
ADD CONSTRAINT FK_SOHD_CTHD
FOREIGN KEY (SOHD)
REFERENCES HOADON (SOHD);

ALTER TABLE CTHD
ADD CONSTRAINT FK_MASP_CTHD
FOREIGN KEY (MASP)
REFERENCES SANPHAM (MASP);

/*Nhap du lieu KHACHHANG*/
SET DATEFORMAT dmy;				-- Chuyen tu dinh dang ymd thanh dmy
INSERT INTO KHACHHANG VALUES ('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','08823451','22/10/1960 ',13060000 ,'22/07/2006')
INSERT INTO KHACHHANG VALUES ('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','3/4/1974 ',280000 ,'30/07/2006')
INSERT INTO KHACHHANG VALUES ('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','12/6/1980 ',3860000 ,'05/08/2006')
INSERT INTO KHACHHANG VALUES ('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','9/3/1965 ',250000 ,'02/10/2006')
INSERT INTO KHACHHANG VALUES ('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','10/3/1950 ',21000 ,'28/10/2006')
INSERT INTO KHACHHANG VALUES ('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981 ',915000 ,'24/11/2006')
INSERT INTO KHACHHANG VALUES ('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','6/4/1971 ',12500 ,'01/12/2006')
INSERT INTO KHACHHANG VALUES ('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','10/1/1971 ',365000 ,'13/12/2006')
INSERT INTO KHACHHANG VALUES ('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','3/9/1979 ',70000 ,'14/01/2007')
INSERT INTO KHACHHANG VALUES ('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','2/5/1983 ',67500 ,'16/01/2007')
---------------------------------
/*Nhap du lieu NHANVIEN*/
SET DATEFORMAT dmy;	
INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','13/4/2006','0927345678')
INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','21/4/2006','0987567390')
INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','27/4/2006','0997047382')
INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','24/6/2006','0913758498')
INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','20/7/2006','0918590387')
----------------------------------
/*Nhap du lieu SANPHAM*/
INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)
-------------------------------------
/*Nhap du lieu HOADON*/
SET DATEFORMAT dmy;	
INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)
------------------------------------------
/*Nhap du lieu CTHD*/
INSERT INTO CTHD VALUES(1001,'TV02',10)
INSERT INTO CTHD VALUES(1001,'ST01',5)
INSERT INTO CTHD VALUES(1001,'BC01',5)
INSERT INTO CTHD VALUES(1001,'BC02',10)
INSERT INTO CTHD VALUES(1001,'ST08',10)
INSERT INTO CTHD VALUES(1002,'BC04',20)
INSERT INTO CTHD VALUES(1002,'BB01',20)
INSERT INTO CTHD VALUES(1002,'BB02',20)
INSERT INTO CTHD VALUES(1003,'BB03',10)
INSERT INTO CTHD VALUES(1004,'TV01',20)
INSERT INTO CTHD VALUES(1004,'TV02',10)
INSERT INTO CTHD VALUES(1004,'TV03',10)
INSERT INTO CTHD VALUES(1004,'TV04',10)
INSERT INTO CTHD VALUES(1005,'TV05',50)
INSERT INTO CTHD VALUES(1005,'TV06',50)
INSERT INTO CTHD VALUES(1006,'TV07',20)
INSERT INTO CTHD VALUES(1006,'ST01',30)
INSERT INTO CTHD VALUES(1006,'ST02',10)
INSERT INTO CTHD VALUES(1007,'ST03',10)
INSERT INTO CTHD VALUES(1008,'ST04',8)
INSERT INTO CTHD VALUES(1009,'ST05',10)
INSERT INTO CTHD VALUES(1010,'TV07',50)
INSERT INTO CTHD VALUES(1010,'ST07',50)
INSERT INTO CTHD VALUES(1010,'ST08',100)
INSERT INTO CTHD VALUES(1010,'ST04',50)
INSERT INTO CTHD VALUES(1010,'TV03',100)
INSERT INTO CTHD VALUES(1011,'ST06',50)
INSERT INTO CTHD VALUES(1012,'ST07',3)
INSERT INTO CTHD VALUES(1013,'ST08',5)
INSERT INTO CTHD VALUES(1014,'BC02',80)
INSERT INTO CTHD VALUES(1014,'BB02',100)
INSERT INTO CTHD VALUES(1014,'BC04',60)
INSERT INTO CTHD VALUES(1014,'BB01',50)
INSERT INTO CTHD VALUES(1015,'BB02',30)
INSERT INTO CTHD VALUES(1015,'BB03',7)
INSERT INTO CTHD VALUES(1016,'TV01',5)
INSERT INTO CTHD VALUES(1017,'TV02',1)
INSERT INTO CTHD VALUES(1017,'TV03',1)
INSERT INTO CTHD VALUES(1017,'TV04',5)
INSERT INTO CTHD VALUES(1018,'ST04',6)
INSERT INTO CTHD VALUES(1019,'ST05',1)
INSERT INTO CTHD VALUES(1019,'ST06',2)
INSERT INTO CTHD VALUES(1020,'ST07',10)
INSERT INTO CTHD VALUES(1021,'ST08',5)
INSERT INTO CTHD VALUES(1021,'TV01',7)
INSERT INTO CTHD VALUES(1021,'TV02',10)
INSERT INTO CTHD VALUES(1022,'ST07',1)
INSERT INTO CTHD VALUES(1023,'ST04',6)

-- I. 
-- 2) Them vao thuoc tinh GHICHU co kieu du lieu varchar(20) cho quan he SANPHAM
ALTER TABLE SANPHAM
ADD GHICHU VARCHAR(20);
-- 3) Them vao thuoc tinh LOAIKH co kieu du lieu tinyint cho quan he KHACHHANG
ALTER TABLE KHACHHANG
ADD LOAIKH TINYINT;
-- 4) Sua kieu du lieu cua thuoc tinh GHICHU trong quan he SANPHAM thanh varchar(100)
ALTER TABLE SANPHAM
ALTER COLUMN GHICHU VARCHAR(100);
-- 5) Xoa thuoc tinh GHICHU trong quan he SANPHAM
ALTER TABLE SANPHAM
DROP COLUMN GHICHU;
-- 6) Lam the nao de thuoc tinh LOAIKH trong QH KHACHHANG co the luu cac gia tri "Vang lai, "Thuong xuyen", "Vip",...
-- Tra loi: Sua kieu du lieu cua thuoc tinh LOAIKH
ALTER TABLE KHACHHANG
ALTER COLUMN LOAIKH VARCHAR(20);
-- 7) DON VI TINH CUA SAN PHAM CHI CO THE LA ("cay", "hop", "cai", "quyen", "chuc")
ALTER TABLE SANPHAM
ADD CONSTRAINT RANGBUOCDONVITINH
CHECK (DVT IN ('cay', 'hop', 'cai', 'quyen', 'chuc'));
-- 8) GIA BAN CUA SAN PHAM TU 500 DONG TRO LEN
ALTER TABLE SANPHAM
ADD CONSTRAINT DIEUKIEN_GIABAN
CHECK (GIA >= 500);
-- 9) MOI LAN MUA HANG, KHACH HANG PHAI MUA IT NHAT 1 SAN PHAM
ALTER TABLE CTHD
ADD CONSTRAINT DIEUKIEN_SOSANPHAMMUA
CHECK (SL >= 1);
-- 10) NGAY KHACH HANG DANG KY PHAI LON HON NGAY SINH CUA KHACH HANG DO
ALTER TABLE KHACHHANG
ADD CONSTRAINT DIEUKIEN_NGAYDANGKI
CHECK (NGDK > NGSINH);
---------------------------------------------------------------------------------------------------------------------
-- II. 
-- II.2:  
SELECT * INTO SANPHAM1 FROM SANPHAM;
SELECT * INTO KHACHHANG1 FROM KHACHHANG;
-- II.3:
UPDATE SANPHAM1
SET GIA = GIA * 1.05
WHERE NUOCSX = 'Thai Lan';
-- II.4: UPDATE SANPHAM1SET GIA = GIA * 0.95WHERE NUOCSX = 'Trung Quoc' AND GIA <= 10000;-- II.5: SET DATEFORMAT dmyUPDATE KHACHHANG1SET LOAIKH = 'Vip'WHERE (NGDK < '1/1/2007' AND DOANHSO >= 10000000) OR (NGDK >= '1/1/2007' AND DOANHSO >= 2000000)--------------------------------------------------------------------------------------------------------------- III. -- 1. In ra danh sach san pham (MASP, TENSP) do 'Trung Quoc' san xuat
SELECT MASP, TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc';
-- 2. In ra danh sach san pham (MASP, TENSP) co don vi tinh la 'cay', 'quyen'
SELECT MASP, TENSP FROM SANPHAM WHERE (DVT = 'cay' OR DVT = 'quyen');
-- 3. In ra danh sach san pham (MASP, TENSP) co ma san pham bat dau la 'B' va ket thuc la '01'
SELECT MASP, TENSP FROM SANPHAM WHERE (MASP LIKE 'B%01');
-- 4. In ra danh sach san pham (MASP, TENSP) do 'Trung Quoc' san xuat co gia tu 30000 den 40000
SELECT MASP, TENSP FROM SANPHAM WHERE (NUOCSX = 'Trung Quoc' AND (GIA BETWEEN 30000 AND 40000));
-- 5. In ra danh sach san pham (MASP, TENSP) do 'Trung Quoc' hoac 'Thai Lan' san xuat co gia tu 30000 den 40000
SELECT MASP, TENSP FROM SANPHAM WHERE  ((NUOCSX = 'Trung Quoc' OR NUOCSX = 'Thai Lan') AND (GIA BETWEEN 30000 AND 40000));
-- 6. In ra cac so hoa don, tri gia hon don ban ra trong ngay 1/1/2007 va ngay 2/1/2007
SET DATEFORMAT dmy
SELECT SOHD, TRIGIA FROM HOADON WHERE (NGHD BETWEEN '1/1/2007' AND '2/1/2007');
-- 7. In ra so hoa don, tri gia hon don trong thang 1/2007, sap xep theo ngay (tang dan) va tri gia cac hoa don (giam dan)
SET DATEFORMAT dmy
SELECT SOHD, TRIGIA FROM HOADON 
WHERE (NGHD BETWEEN '1/1/2007' AND '31/1/2007')
ORDER BY NGHD ASC, TRIGIA DESC;
-- 8. In ra danh sach cac khach hang (MAKH, HOTEN) da mua hang ngay 1/1/2007
SELECT KHACHHANG.MAKH, HOTEN FROM HOADON INNER JOIN KHACHHANG ON HOADON.MAKH = KHACHHANG.MAKH
WHERE NGHD = '1/1/2007';
-- 9. In ra so hoa don, tri gia hon don do nhan vien co ten 'Nguyen Van B' lap trong ngay 28/10/2006
SET DATEFORMAT dmy
SELECT SOHD, TRIGIA FROM HOADON INNER JOIN NHANVIEN ON HOADON.MANV = NHANVIEN.MANV
WHERE NGHD = '28/10/2006' AND HOTEN = 'Nguyen Van B';
-- 10. In ra danh sach san pham (MASP, TENSP) duoc khach hang co ten 'Nguyen Van A' mua trong thang 10/2006
SET DATEFORMAT dmy;
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
INNER JOIN HOADON ON CTHD.SOHD = HOADON.SOHD
INNER JOIN KHACHHANG ON HOADON.MAKH = KHACHHANG.MAKH
WHERE HOTEN = 'Nguyen Van A' AND (NGHD BETWEEN '1/10/2006' AND '31/10/2006');
-- 11. Tim cac so hoa don da mua san pham co ma so "BB01" hoac "BB02"
SELECT DISTINCT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE MASP IN ('BB01','BB02');
-- 12. Tim cac so hoa don da mua san pham co ma so 'BB01', hoac 'BB02', moi san pham mua voi so luong tu 10 den 20
SELECT DISTINCT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE ((MASP = 'BB01' OR MASP = 'BB02') AND (SL BETWEEN 10 AND 20));

SELECT DISTINCT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE MASP = 'BB01' AND (SL BETWEEN 10 AND 20)
UNION 
SELECT DISTINCT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE MASP = 'BB02' AND (SL BETWEEN 10 AND 20)
-- 13. Tim cac so hoa don mua cung luc 2 san pham co ma so 'BB01' va 'BB02', moi san pham mua voi so luong tu 10 den 20
SELECT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE MASP = 'BB01' AND (SL BETWEEN 10 AND 20)
INTERSECT
SELECT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE MASP = 'BB02' AND (SL BETWEEN 10 AND 20);
-- 14. In ra danh sach san pham (MASP, TENSP) do 'Trung Quoc' san xuat hoac cac san phan duoc ban ra trong ngay 1/1/2007
SET DATEFORMAT dmy;
SELECT MASP, TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
UNION
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
INNER JOIN HOADON ON CTHD.SOHD = HOADON.SOHD
WHERE NGHD = '1/1/2007';
-- 15. In ra danh sach san pham (MASP, TENSP) khong ban duoc
SELECT MASP, TENSP FROM SANPHAM
EXCEPT
SELECT SANPHAM.MASP, TENSP FROM SANPHAM INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
-- 16. In ra danh sach san pham (MASP, TENSP) khong ban duoc trong nam 2006
SELECT MASP, TENSP FROM SANPHAM
EXCEPT
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
INNER JOIN HOADON ON CTHD.SOHD = HOADON.SOHD
WHERE YEAR(NGHD) = 2006;
-- 17. In ra danh sach san pham (MASP, TENSP) do 'Trung Quoc' san xuat khong ban duoc trong nam 2006
SELECT MASP, TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
EXCEPT 
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
INNER JOIN HOADON ON CTHD.SOHD = HOADON.SOHD 
WHERE NUOCSX = 'Trung Quoc' AND YEAR(NGHD) = 2006;
-- 18. Tim so hoa don mua tat ca cac san pham do Singapore san xuat
SELECT DISTINCT HOADON.SOHD FROM HOADON
WHERE NOT EXISTS(
    SELECT * FROM SANPHAM
    WHERE NUOCSX = 'Singapore' AND NOT EXISTS(
        SELECT * FROM CTHD
        WHERE CTHD.SOHD = HOADON.SOHD AND CTHD.MASP = SANPHAM.MASP
    )
)
-- 19. Tim so hoa don trong nam 2006 da mua it nhat tat ca cac san pham do Singapore san xuat
SELECT HOADON.SOHD FROM HOADON
WHERE YEAR(NGHD) = 2006 AND NOT EXISTS(
    SELECT SANPHAM.MASP FROM SANPHAM
    WHERE NUOCSX = 'Singapore' AND NOT EXISTS(
        SELECT CTHD.SOHD, CTHD.MASP FROM CTHD
        WHERE CTHD.SOHD = HOADON.SOHD AND CTHD.MASP = SANPHAM.MASP
    )
)
-- 20. Co bao nhieu hoa don khong phai do khach hang dang ky thanh vien mua
SELECT COUNT(SOHD) AS SoKhachHangKhongPhaiThanhVien FROM HOADON
WHERE MAKH IS NULL;
-- 21. Co bao nhieu san pham khac nhau ban ra trong nam 2006
SELECT COUNT(DISTINCT MASP) AS SoLuongSanPham
FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE YEAR(NGHD) = 2006;
-- 22. Cho biet tri gia hoa don cao nhat, thap nhat la bao nhieu
SELECT MIN(TRIGIA) AS TriGiaNhoNhat, MAX(HOADON.TRIGIA) AS TriGiaLonNhat FROM HOADON
-- 23. Tri gia trung binh cua tat ca cac hoa don duoc ban ra trong nam 2006
SELECT AVG(TRIGIA) AS TriGiaTrungBinh FROM HOADON WHERE YEAR(NGHD) = 2006;
-- 24. Tinh doanh thu ban hang trong nam 2006
SELECT SUM(TRIGIA) AS DoanhThu2006 FROM HOADON WHERE YEAR(NGHD) = 2006;
-- 25. Tim so hoa don co tri gia cao nhat trong nam 2006
SELECT SOHD, TRIGIA FROM HOADON WHERE YEAR(NGHD) = 2006
AND TRIGIA = (SELECT MAX(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = 2006);
-- 26. Tim ho ten khach hang da mua hoa don co tri gia cao nhat trong nam 2006
SELECT DISTINCT HOTEN FROM KHACHHANG
INNER JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH
WHERE YEAR(NGHD) = 2006 AND TRIGIA = (SELECT MAX(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = 2006);
-- 27. In ra danh sach 3 khach hang dau tien (MAKH, HOTEN) sap xep theo doanh so giam dan
SELECT TOP 3 MAKH, HOTEN FROM KHACHHANG
ORDER BY DOANHSO DESC
-- 28. In ra danh sach cac san pham co gia ban bang 1 trong 3 muc gia cao nhat
SELECT MASP, TENSP FROM SANPHAM
WHERE GIA IN (SELECT DISTINCT TOP 3 GIA FROM SANPHAM ORDER BY GIA DESC);
-- 29. In ra danh sach san pham do 'Thai Lan' san xuat co gia bang 1 trong 3 muc gia cao nhat (cua tat ca san pham)
SELECT MASP, TENSP FROM SANPHAM WHERE NUOCSX = 'Thai Lan'
AND GIA IN (SELECT DISTINCT TOP 3 GIA FROM SANPHAM ORDER BY GIA DESC);
-- 30. In ra danh sach san pham do 'Trung Quoc' san xuat co gia bang 1 trong 3 muc gia cao nhat (cua san pham do 'Trung Quoc' san xuat)
SELECT MASP, TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
AND GIA IN (SELECT DISTINCT TOP 3 GIA FROM SANPHAM WHERE NUOCSX = 'Trung Quoc' ORDER BY GIA DESC)
-- 31. In ra danh sach khach hang nam trong 3 hang cao nhat (sap xep theo doanh so)
SELECT TOP 3 MAKH, HOTEN FROM KHACHHANG ORDER BY DOANHSO DESC
-- 32. Tinh tong so san pham do 'Trung Quoc' san xuat
SELECT SUM(1) AS SoLuongSanPhamTrungQuoc FROM SANPHAM WHERE NUOCSX = 'Trung Quoc';
-- 33. Tinh tong san pham cua tung nuoc san xuat
SELECT NUOCSX AS TenQuocGia, SUM(1) AS SoLuongSanPhamSanXuat FROM SANPHAM GROUP BY NUOCSX;
-- 34. Voi tung nuoc san xuat, tim gia ban cao nhat, thap nhat, trung binh cua tat ca cac san pham
SELECT NUOCSX AS TenQuocGia, MAX(GIA) AS GiaBanCaoNhat, MIN(GIA) AS GiaBanThapNhat, AVG(GIA) AS GiaBanTrungBinh
FROM SANPHAM GROUP BY NUOCSX;
-- 35. Tinh doanh thu ban hang moi ngay
SELECT NGHD, SUM(TRIGIA) AS DoanhThu FROM HOADON GROUP BY NGHD;
-- 36. Tinh tong so luong cua tung san pham ban ra trong thang 10/2006
SET DATEFORMAT dmy;
SELECT MASP, SUM(SL) AS TongSoLuong FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD
WHERE NGHD BETWEEN '1/10/2006' AND '31/10/2006' GROUP BY MASP;
-- 37. Tinh doanh thu ban hang cua tung thang trong nam 2006
SELECT MONTH(NGHD) AS Thang, SUM(TRIGIA) AS DoanhThu FROM HOADON 
WHERE YEAR(NGHD) = 2006 GROUP BY MONTH(NGHD);
-- 38. Tim hoa don co mua it nhat 4 san pham khac nhau 
SELECT HOADON.SOHD FROM HOADON INNER JOIN CTHD ON HOADON.SOHD = CTHD.SOHD 
GROUP BY HOADON.SOHD HAVING COUNT (DISTINCT MASP) >= 4;
-- 39.Tim hoa don co mua 3 san pham do 'Viet Nam' san xuat (3 san pham khac nhau)
SELECT SOHD FROM CTHD INNER JOIN SANPHAM ON CTHD.MASP = SANPHAM.MASP
WHERE NUOCSX = 'Viet Nam'
GROUP BY SOHD HAVING COUNT (DISTINCT SANPHAM.MASP) = 3;
-- 40. Tim khach hang co so lan mua hang nhieu nhat
SELECT KHACHHANG.MAKH, HOTEN, COUNT(DISTINCT SOHD) FROM KHACHHANG 
INNER JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH 
GROUP BY KHACHHANG.MAKH, HOTEN 
HAVING COUNT(SOHD) >= ALL(SELECT COUNT(*) FROM HOADON GROUP BY MAKH)
-- 41. Thang may trong nam 2006, doanh so ban hang cao nhat
SELECT TOP 1 MONTH(NGHD) AS Thang, SUM(TRIGIA) AS DoanhThu FROM HOADON
WHERE YEAR(NGHD) = 2006 GROUP BY MONTH(NGHD) ORDER BY DoanhThu DESC;
-- 42. Tim san pham (MASP, TENSP) co tong so luong ban ra thap nhat trong nam 2006
SELECT SANPHAM.MASP, TENSP FROM SANPHAM
INNER JOIN CTHD ON SANPHAM.MASP = CTHD.MASP
INNER JOIN HOADON ON CTHD.SOHD = HOADON.SOHD 
WHERE YEAR(NGHD) = 2006
GROUP BY SANPHAM.MASP, TENSP
HAVING SUM(SL) <= ALL(SELECT SUM(SL) FROM CTHD GROUP BY MASP)
-- 43. Moi nuoc san xuat, tim san pham (MASP, TENSP) co gia ban cao nhat
SELECT SP.NUOCSX as QuocGiaSanXuat, SP.MASP, SP.TENSP, SP.GIA AS GiaBanCaoNhat FROM SANPHAM SP
WHERE SP.GIA IN(
    SELECT MAX(SP1.GIA) FROM SANPHAM SP1
    WHERE SP.NUOCSX = SP1.NUOCSX
)
-- 44. Tim nuoc san xuat san xuat it nhat 3 san pham co gia ban khac nhau
SELECT NUOCSX FROM SANPHAM
GROUP BY NUOCSX
HAVING COUNT (DISTINCT MASP) >= 3 AND COUNT (DISTINCT GIA) >= 3;
-- 45. Trong 10 khach hang co doanh so cao nhat, tim khach hang co so lan mua nhieu nhat
SELECT TOP 1 XHKH.MAKH, HOTEN
FROM (
    SELECT TOP 10 KHACHHANG.MAKH, HOTEN
    FROM KHACHHANG INNER JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH
    GROUP BY KHACHHANG.MAKH, HOTEN
    ORDER BY SUM(HOADON.TRIGIA) DESC
) AS XHKH
INNER JOIN HOADON ON XHKH.MAKH = HOADON.MAKH
GROUP BY XHKH.MAKH, XHKH.HOTEN
ORDER BY COUNT(DISTINCT HOADON.SOHD) DESC
GO

-- I.11 NGAY MUA HANG CUA MOT KHACH HANG THANH VIEN SE LON HON HOAC BANG NGAY KHACH HANG DO DANG KY THANH VIEN
CREATE TRIGGER TRG_INSERT_HD ON HOADON
AFTER INSERT, UPDATE
AS 
BEGIN 
    IF (SELECT COUNT(*) FROM INSERTED I JOIN KHACHHANG KH ON I.MAKH = KH.MAKH WHERE I.NGHD >= KH.NGDK) = 0
        BEGIN
            ROLLBACK TRANSACTION
        END
END;
GO

CREATE TRIGGER TRG_UPDATE_HD ON KHACHHANG
AFTER UPDATE 
AS 
BEGIN 
    IF (SELECT COUNT(*) FROM INSERTED I JOIN HOADON HD ON I.MAKH = HD.MAKH WHERE I.NGDK <= HD.NGHD) = 0
        BEGIN 
            ROLLBACK TRANSACTION;
        END
END;
GO
-------------------------------------------------------------------------------------------------------------------------
-- I.12 NGAY BAN HANG (NGHD) CUA MOT NHAN VIEN PHAI LON HON HOAC BANG NGAY NHAN VIEN DO VAO LAM
CREATE TRIGGER TRG_INSERT_NGHD ON HOADON
AFTER INSERT, UPDATE
AS
BEGIN
    IF (SELECT COUNT(*) FROM INSERTED I JOIN NHANVIEN NV ON I.MANV = NV.MANV WHERE I.NGHD >= NV.NGVL) = 0
        BEGIN
            ROLLBACK TRANSACTION
        END
END;
GO

CREATE TRIGGER TRG_UPDATE_NGVL ON NHANVIEN
AFTER UPDATE
AS 
BEGIN 
    IF (SELECT COUNT(*) FROM INSERTED I JOIN HOADON HD ON I.MANV = HD.MANV WHERE I.NGVL <= HD.NGHD) = 0
        BEGIN 
            ROLLBACK TRANSACTION
        END
END;
GO
-------------------------------------------------------------------------------------------------------------------------
-- I.13 MOI HOA DON PHAI CO IT NHAT 1 CTHD
CREATE TRIGGER TRG_DEL_HD ON HOADON
AFTER DELETE
AS 
BEGIN
    IF (SELECT COUNT(*) FROM DELETED D JOIN CTHD ON D.SOHD = CTHD.SOHD) > 0
    BEGIN 
        ROLLBACK TRANSACTION
    END
END;
GO

CREATE TRIGGER TRG_INS_CTHD ON CTHD
AFTER INSERT, UPDATE
AS 
BEGIN
    IF (SELECT COUNT(*) FROM INSERTED I JOIN HOADON ON I.SOHD = HOADON.SOHD) = 0
    BEGIN
        ROLLBACK TRANSACTION
    END
END;
GO

CREATE TRIGGER TRG_DEL_CTHD ON CTHD
AFTER DELETE
AS 
BEGIN 
    IF (SELECT COUNT(*) FROM DELETED D JOIN HOADON ON D.SOHD = HOADON.SOHD) > 0
    BEGIN
        ROLLBACK TRANSACTION
    END
END
GO
-------------------------------------------------------------------------------------------------------------------------
-- I.14 TRI GIA CUA MOT HOA DON LA TONG THANH TIEN (SOLUONG * DONGIA) CUA CAC CHI TIET THUOC HOA DON DO
CREATE TRIGGER TRG_INS_HD_14 ON HOADON 
FOR INSERT 
AS 
    UPDATE HOADON SET TRIGIA = 0 WHERE SOHD = (SELECT SOHD FROM INSERTED)   -- Insert hoa don voi gia tri ban dau la 0
GO

CREATE TRIGGER TRG_UDT_HD_14 ON HOADON
FOR INSERT
AS 
    UPDATE HOADON SET TRIGIA = (SELECT TRIGIA FROM DELETED) WHERE SOHD = (SELECT SOHD FROM INSERTED) -- Update hoa don voi gia tri khong doi
GO

CREATE TRIGGER TRG_INS_CTHD_14 ON CTHD
FOR INSERT
AS 
DECLARE 
    @SL INT, @GIA MONEY, @SOHD INT
    SELECT @SL = SL, @GIA = GIA, @SOHD = SOHD FROM INSERTED I, SANPHAM A WHERE I.SOHD = A.SOHD -- Insert CTHD va update lai tri gia hoa don
    UPDATE HOADON SET TRIGIA = TRIGIA + @SL * @GIA 
GO

CREATE TRIGGER TRG_DEL_CTHD_14 ON CTHD
FOR DELETE 
AS
DECLARE 
    @SL INT, @GIA MONEY, @SOHD INT
    SELECT @SL = SL, @GIA = GIA, @SOHD = SOHD FROM DELETED D, SANPHAM B WHERE D.SOHD = B.SOHD  -- Xoa CTHD va update lai tri gia hoa don
    UPDATE HOADON SET TRIGIA = TRIGIA - @SL * @GIA
GO

CREATE TRIGGER TRG_UDT_CTHD_14 ON CTHD
FOR UPDATE 
AS
DECLARE 
    @SL_OLD INT, @GIA_OLD MONEY, @SOHD_OLD INT,
    @SL_NEW INT, @GIA_NEW MONEY, @SOHD_NEW INT

    SELECT @SL_OLD = SL, @GIA_OLD = GIA, @SOHD_OLD = SOHD
    FROM DELETED D, SANPHAM A WHERE D.SOHD = A.SOHD

    SELECT @SL_NEW = SL, @GIA_NEW = GIA, @SOHD_NEW = SOHD
    FROM INSERTED I, SANPHAM B WHERE I.SOHD = B.SOHD

    IF (@SOHD_OLD = @SOHD_NEW)
        BEGIN
            UPDATE HOADON
            SET TRIGIA = TRIGIA + @SL_NEW * @GIA_NEW - @SL_OLD * @GIA_OLD              -- update mot CTHD va update lai tri gia tuong ung
            WHERE SOHD = @SOHD_OLD
        END
    ELSE
        BEGIN
            UPDATE HOADON 
            SET TRIGIA = TRIGIA - @SL_OLD * @GIA_OLD WHERE SOHD = @SOHD_OLD

            UPDATE HOADON
            SET TRIGIA = TRIGIA + @SL_NEW * @GIA_NEW WHERE SOHD = @SOHD_NEW
        END
GO

CREATE TRIGGER TRG_UDT_HD_14 ON HOADON
FOR UPDATE
AS 
DECLARE 
    @GIA_OLD MONEY, @GIA_NEW MONEY, @SL INT, @SOHD INT

    SELECT @GIA_OLD = GIA FROM DELETED
    SELECT @GIA_NEW = GIA FROM INSERTED

    SELECT @SOHD = SOHD, @SL = SL FROM INSERTED I, CTHD A WHERE I.SOHD = A.SOHD         -- Update hoa don va khong thay doi tri gia

    UPDATE HOADON SET TRIGIA = TRIGIA + @SL * (@GIA_NEW - @GIA_OLD) 
    WHERE @SOHD = SOHD
GO
------------------------------------------------------------------------------------------------------
-- I.15 Doanh so cua mot khach hang la tong tri gia cac hoa don ma khach hang thanh vien do mua
CREATE TRIGGER TRG_INS_KH_15 ON KHACHHANG
FOR INSERT 
AS
DECLARE 
    @MAKH CHAR(4)
    SELECT @MAKH = MAKH FROM INSERTED 
    UPDATE KHACHHANG SET TRIGIA = 0 WHERE MAKH = @MAKH          -- Them khach hang thanh vien moi va set tri gia la 0
GO

CREATE TRIGGER TRG_UDT_KH_15 ON KHACHHANG
FOR UPDATE
AS
DECLARE
    @MAKH CHAR(4), @DOANHSO_CU MONEY
    SELECT @MAKH = MAKH FROM INSERTED
    SELECT @DOANHSO_CU = DOANHSO FROM DELETED                   -- Update khach hang 

    UPDATE KHACHHANG SET DOANHSO = DOANHSO_CU WHERE MAKH = @MAKH
GO

CREATE TRIGGER TRG_INS_HD_15 ON HOADON
FOR INSERT
AS 
DECLARE 
    @MAKH CHAR(4), @TRIGIA MONEY
    SELECT @MAKH = MAKH, @TRIGIA = TRIGIA FROM INSERTED 

    UPDATE KHACHHANG SET DOANHSO = DOANHSO + @TRIGIA WHERE MAKH = @MAKH -- Update gia tien cua hoa don vao doanh so cua khach hang
GO

CREATE TRIGGER TRG_DEL_HD_15 ON HOADON
FOR DELETE 
AS 
DECLARE 
    @MAKH CHAR(4), @TRIGIA MONEY
    SELECT @MAKH = MAKH, @TRIGIA = @TRIGIA FROM DELETED
    UPDATE KHACHHANG SET DOANHSO = DOANHSO - @TRIGIA WHERE MAKH = @MAKH -- Xoa mot hoa don va cap nhat lai doanh so cho khach hang
GO

CREATE TRIGGER TRG_UDT_HD_15 ON HOADON
FOR UPDATE
AS 
DECLARE 
    @MAKH CHAR(4), @TRIGIA_MOI MONEY, @TRIGIA_CU MONEY
    SELECT @MAKH = MAKH, @TRIGIA_MOI = TRIGIA FROM INSERTED
    SELECT @MAKH = MAKH, @TRIGIA_CU = TRIGIA FROM DELETED                         -- Update hoa don  

    UPDATE KHACHHANG SET DOANHSO = DOANHSO + @TRIGIA_MOI - @TRIGIA_CU WHERE MAKH = @MAKH
GO
---------------------------------------------------------------------------------------