-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 01:59:43.84




-- tables
-- Table TNhanVien
CREATE TABLE TNhanVien (
    MaNV char(9)    NOT NULL ,
    TenNV varchar(100)    NOT NULL ,
    Gioitinh varchar(100)    NOT NULL ,
    Email varchar(100)    NOT NULL ,
    Mucluong int    NOT NULL ,
    MaPhong char(9)    NOT NULL ,
    TPhong_MaPhong char(9)    NOT NULL ,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (MaNV)
);

-- Table TPhong
CREATE TABLE TPhong (
    MaPhong char(9)    NOT NULL ,
    TenPhong varchar(100)    NOT NULL ,
    CONSTRAINT TPhong_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TNhanVien_TPhong (table: TNhanVien)


ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhong FOREIGN KEY TNhanVien_TPhong (TPhong_MaPhong)
    REFERENCES TPhong (MaPhong);



-- End of file.

