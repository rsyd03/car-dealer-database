CREATE DATABASE carDealer;
USE carDealer;
CREATE TABLE Tabel_Pembeli
		(
			id_pembeli INT PRIMARY KEY NOT NULL,
			nama_pembeli VARCHAR (50) NOT NULL,
			alamat_pembeli VARCHAR (100) NOT NULL,
			kota VARCHAR (50) NOT NULL,
			Tgl_lahir DATE NOT NULL,
			usia INT NOT NULL,
			no_kontak CHAR (13) NOT NULL,
			email VARCHAR (100) NOT NULL,
			pekerjaan VARCHAR (50) NOT NULL,
			nama_perusahaan VARCHAR (50) NOT NULL,
			hobi_1 VARCHAR (50) NULL,
			hobi_2 VARCHAR (50) NULL
		);
CREATE TABLE Tabel_Mobil
		(
			id_mobil INT PRIMARY KEY NOT NULL,
			nama_mobil VARCHAR (50) NOT NULL,
			merk VARCHAR (50) NOT NULL,
			transmisi VARCHAR (30) NOT NULL,
			mesin VARCHAR (30) NOT NULL,
			tipe_bahan_bakar VARCHAR (30) NULL,
			warna VARCHAR (50) NOT NULL,
			tahun_produksi INT NOT NULL,
			jumlah_pintu INT NOT NULL,
			kursi INT NOT NULL,
			kecepatan_km_per_jam INT NOT NULL,
			harga_jual INT NOT NULL,
			stok INT NOT NULL,
			status_penjualan CHAR (15) NOT NULL
		);
CREATE TABLE Tabel_Transaksi
		(
			id_transaksi INT NOT NULL,
			id_pembeli INT NOT NULL,
			id_mobil INT NOT NULL,
			tgl_transaksi DATE NOT NULL,
			jumlah_pembelian INT NOT NULL,
			total_harga INT NOT NULL,
			jenis_pembayaran VARCHAR (30) NOT NULL,
			waktu_cicilan_bulan INT NULL,
			uang_muka INT NULL,
			status_pembayaran VARCHAR (30) NOT NULL,
			waktu_garansi_tahun INT NOT NULL,
			tgl_garansi DATE NOT NULL
		);

-- tabel_pembeli
-- 3 record pada soal
INSERT INTO tabel_pembeli VALUES(15060001,'Asep Maulana','jln. Belitung, no. 53','Bandung','1985-03-15',37,08382256373,'asep@gmail.com','Akuntan','PT. Langit Biru','Memasak',null);
INSERT INTO tabel_pembeli VALUES(17060002,'Vina Muliani','jln. Sukaluyu, no. 15','Bandung','1990-06-05',32,08572891239,'vina@gmail.com','Administrator','PT. Indah Nusantara','Sepeda','Membaca Novel');
INSERT INTO tabel_pembeli VALUES(17060003,'Deri Sanusi','jln. Kalidam, no. 25','Cimahi','1992-05-23',30,08572746511,'deri@gmail.com','IT Support','CV. Sepatuku',null,null);
-- 8 record yang baru
INSERT INTO tabel_pembeli VALUES(17060004,'Fauzi Hakim','jln. Sariwangi, no. 12','Bandung','1988-07-10',35,08134567891,'fauzi@gmail.com','Pegawai Bank','Bank Central Asia','Berenang','Menulis');
INSERT INTO tabel_pembeli VALUES(17060005,'Amalia Rachma','jln. Cibaduyut, no. 29','Bandung','1990-03-11',33,08567893210,'amalia@gmail.com','Guru','SMA Negeri 1 Bandung','Menari','Menyanyi');
INSERT INTO tabel_pembeli VALUES(17060006,'Bima Setya','jln. Cijerah, no. 40','Cimahi','1987-08-08',36,08234567891,'bima@gmail.com','Dokter','RSU Cimahi','Berolahraga','Menonton Film');
INSERT INTO tabel_pembeli VALUES(17060007,'Dwi Handayani','jln. Sariwangi, no. 70','Bandung','1985-04-15',38,08345678912,'dwi@gmail.com','Wiraswasta','Usaha Kecil','Menulis','Bersepeda');
INSERT INTO tabel_pembeli VALUES(17060008,'Eko Susanto','jln. Sariwangi, no. 99','Bandung','1989-01-20',34,08678912345,'eko@gmail.com','Pegawai BUMN','PT. PLN Bandung','Berenang','Bersepeda');
INSERT INTO tabel_pembeli VALUES(17060009,'Fajar Budi','jln. Sariwangi, no. 101','Bandung','1983-02-10',40,08567893210,'fajar@gmail.com','Pegawai Swasta','PT. Telkom Bandung','Berolahraga','Menonton Film');
INSERT INTO tabel_pembeli VALUES(17060010,'Gina Novita','jln. Sariwangi, no. 120','Bandung','1987-05-15',36,08234567891,'gina@gmail.com','Pegawai Pemerintah','Dinas Pendidikan Bandung','Menari','Menyanyi');
INSERT INTO tabel_pembeli VALUES(17060011,'Haris Firmansyah','jln. Sariwangi, no. 150','Bandung','1985-07-20',38,08678912345,'haris@gmail.com','Dosen','Universitas Padjadjaran','Bersepeda','Menulis');
-- tabel_mobil
-- 5 record pada soal
INSERT INTO tabel_mobil VALUES(1200101,'Xpander Cross','Mitsubishi','Automatic','4 silinder','Bensin','White',2019,5,7,165,31000000,5,'Tersedia');
INSERT INTO tabel_mobil VALUES(1200102,'Xpander Cross','Mitsubishi','Automatic','4 silinder','Bensin','Graphite Grey',2019,5,7,165,31000000,8,'Tersedia');
INSERT INTO tabel_mobil VALUES(2190501,'Brio Satya E','Honda','Manual','4 silinder','Bensin','Crystal Black Pearl',2018,5,5,145,18800000,0,'Tidak Tersedia');
INSERT INTO tabel_mobil VALUES(3210801,'All New Fortuner','Toyota','Automatic','4 silinder','Bensin','Phantom Brown',2016,5,7,190,52000000,2,'Tersedia');
INSERT INTO tabel_mobil VALUES(4210501,'All New Terios','Daihatsu','Manual','4 silinder','Bensin','Bronze Metallic',2017,5,7,165,23000000,4,'Tersedia');
-- 8 record yang baru
INSERT INTO tabel_mobil VALUES(5210101,'Avanza Veloz','Toyota','Automatic','4 silinder','Bensin','Silver Metallic',2021,5,7,165,26000000,10,'Tersedia');
INSERT INTO tabel_mobil VALUES(6210101,'Innova Crysta','Toyota','Automatic','4 silinder','Bensin','White Pearl',2022,5,7,165,50000000,7,'Tersedia');
INSERT INTO tabel_mobil VALUES(7210101,'Xenia R Deluxe','Daihatsu','Manual','4 silinder','Bensin','Black',2023,5,7,165,24000000,5,'Tersedia');
INSERT INTO tabel_mobil VALUES(8210101,'Ertiga Sporty','Suzuki','Automatic','4 silinder','Bensin','Maroon',2021,5,7,165,29000000,9,'Tersedia');
INSERT INTO tabel_mobil VALUES(9210101,'Rush TRD Sportivo','Toyota','Manual','4 silinder','Bensin','Red',2022,5,7,165,31000000,4,'Tersedia');
INSERT INTO tabel_mobil VALUES(1021101,'Mobilio RS','Honda','Automatic','4 silinder','Bensin','White',2021,5,7,165,26000000,7,'Tersedia');
INSERT INTO tabel_mobil VALUES(1121101,'Grand Livina','Nissan','Manual','4 silinder','Bensin','Silver',2022,5,7,165,28000000,6,'Tersedia');
INSERT INTO tabel_mobil VALUES(1221101,'Safari Storme','Tata','Automatic','4 silinder','Bensin','Yellow',2023,5,7,165,35000000,8,'Tersedia');
-- tabel_transaksi
-- 3 record pada soal
INSERT INTO tabel_transaksi VALUES(211226001,15060001,1200101,'2021-12-26',1,31000000,'tunai',null,null,'lunas',5,'2026-12-26');
INSERT INTO tabel_transaksi VALUES(221005001,17060003,1200102,'2022-10-05',2,62000000,'cicilan',36,10000000,'belum lunas',5,'2027-10-05');
INSERT INTO tabel_transaksi VALUES(221108001,17060002,3210801,'2022-11-08',1,52000000,'tunai',null,null,'lunas',3,'2025-11-08');
-- 8 record yang baru
INSERT INTO tabel_transaksi VALUES(221217001,17060004,5210101,'2022-12-17',2,52000000,'cicilan',24,30000000,'belum lunas',5,'2027-12-17');
INSERT INTO tabel_transaksi VALUES(230110001,17060005,6210101,'2023-01-10',1,50000000,'tunai',null,null,'lunas',4,'2027-01-10');
INSERT INTO tabel_transaksi VALUES(230203001,17060006,7210101,'2023-02-03',2,48000000,'cicilan',36,25000000,'belum lunas',5,'2028-02-03');
INSERT INTO tabel_transaksi VALUES(230310002,17060007,8210101,'2023-03-10',1,29000000,'tunai',null,null,'lunas',3,'2026-03-10');
INSERT INTO tabel_transaksi VALUES(230405001,17060008,9210101,'2023-04-05',1,31000000,'tunai',null,null,'lunas',5,'2028-04-05');
INSERT INTO tabel_transaksi VALUES(230529001,17060009,1021101,'2023-05-29',2,52000000,'cicilan',36,25000000,'belum lunas',5,'2028-05-29');
INSERT INTO tabel_transaksi VALUES(230608001,17060010,1121101,'2023-06-08',1,28000000,'tunai',null,null,'lunas',3,'2026-06-08');
INSERT INTO tabel_transaksi VALUES(230710005,17060011,1221101,'2023-07-10',2,70000000,'cicilan',36,30000000,'belum lunas',5,'2028-07-10');

-- tabel_mobil
-- WHERE-AND-OR
select * from tabel_mobil
where stok > 2 and status_penjualan = 'Tersedia' or mesin = 'Bensin';
-- WHERE-NOT-LIKE
select * from tabel_mobil
where not(stok > 2) and merk like 'm%';
-- WHERE-LIKE-AND-IN
select * from tabel_mobil
where merk like 'm%' and stok in(2,8);
-- WHERE-NOT-OR-IN
select * from tabel_mobil
where not(stok > 2) or kursi in(5);
-- ============================================================
-- tabel_transaksi
-- WHERE-AND-OR
select * from tabel_transaksi
where jumlah_pembelian < 2 and jenis_pembayaran = 'tunai' or status_pembayaran = 'lunas';
-- WHERE-NOT-LIKE
select * from tabel_transaksi
where not(jumlah_pembelian > 2) and jenis_pembayaran like 't%';
-- WHERE-LIKE-AND-IN
select * from tabel_transaksi
where jenis_pembayaran like 't%' and waktu_garansi_tahun in(5);
-- WHERE-NOT-OR-IN
select * from tabel_transaksi
where not(jumlah_pembelian > 2) or waktu_garansi_tahun in(3);

CREATE TABLE pegawai
		(
			id_pegawai INT PRIMARY KEY NOT NULL,
			nama_pegawai VARCHAR (50) NOT NULL,
			pemberian_pelaporan_kepada INT NULL
		);
INSERT INTO pegawai VALUES(7301046,'Emily',7301376);
INSERT INTO pegawai VALUES(7301156,'Michael',7301486);
INSERT INTO pegawai VALUES(7301266,'Sarah',7301486);
INSERT INTO pegawai VALUES(7301376,'David',null);
INSERT INTO pegawai VALUES(7301486,'Jessica',null);

-- tabel_pembeli & tabel_transaksi
-- INNER JOIN
select
		tp.nama_pembeli,
        tp.alamat_pembeli,
        tp.kota,
        tp.Tgl_lahir,
        tp.no_kontak,
        tp.pekerjaan
from tabel_pembeli tp
inner join tabel_transaksi tt
on tp.id_pembeli = tt.id_pembeli;
-- LEFT JOIN
select
		tp.nama_pembeli,
        tp.alamat_pembeli,
        tp.kota,
        tp.Tgl_lahir,
        tp.no_kontak,
        tp.pekerjaan
from tabel_pembeli tp
left join tabel_transaksi tt
on tp.id_pembeli = tt.id_pembeli;
-- RIGHT JOIN
select
		tp.nama_pembeli,
        tp.alamat_pembeli,
        tp.kota,
        tp.Tgl_lahir,
        tp.no_kontak,
        tp.pekerjaan
from tabel_pembeli tp
right join tabel_transaksi tt
on tp.id_pembeli = tt.id_pembeli;
-- FULL OUTER
select
		tp.nama_pembeli,
        tp.alamat_pembeli,
        tp.kota,
        tp.Tgl_lahir,
        tp.no_kontak,
        tp.pekerjaan
from tabel_pembeli tp
left join tabel_transaksi tt
on tp.id_pembeli = tt.id_pembeli
union
select
		tp.nama_pembeli,
        tp.alamat_pembeli,
        tp.kota,
        tp.Tgl_lahir,
        tp.no_kontak,
        tp.pekerjaan
from tabel_pembeli tp
right join tabel_transaksi tt
on tp.id_pembeli = tt.id_pembeli;
-- SELF JOIN
select
		a.nama_pegawai as 'Pegawai',
		a.id_pegawai as 'ID Pegawai',
		b.nama_pegawai as 'Laporan Kepada',
		b.id_pegawai as 'ID Atasan'
from pegawai a
join pegawai b
on a.pemberian_pelaporan_kepada = b.id_pegawai;
-- MULTIPLE JOINS
select
		tp.nama_pembeli,
        tp.alamat_pembeli,
        tp.kota,
        tt.jumlah_pembelian,
        tt.jenis_pembayaran,
        tt.status_pembayaran,
        tm.nama_mobil
from tabel_pembeli tp
inner join tabel_transaksi tt
on tp.id_pembeli = tt.id_pembeli
inner join tabel_mobil tm
on tt.id_mobil = tm.id_mobil
order by tt.jumlah_pembelian asc;
-- ============================================================
-- tabel_mobil & tabel_transaksi
-- INNER JOIN
select
		tm.nama_mobil,
        tm.merk,
        tm.transmisi,
        tm.mesin,
        tm.tipe_bahan_bakar,
        tm.warna
from tabel_mobil tm
inner join tabel_transaksi tt
on tm.id_mobil = tt.id_mobil;
-- LEFT JOIN
select
		tm.nama_mobil,
        tm.merk,
        tm.transmisi,
        tm.mesin,
        tm.tipe_bahan_bakar,
        tm.warna
from tabel_mobil tm
left join tabel_transaksi tt
on tm.id_mobil = tt.id_mobil;
-- RIGHT JOIN
select
		tm.nama_mobil,
        tm.merk,
        tm.transmisi,
        tm.mesin,
        tm.tipe_bahan_bakar,
        tm.warna
from tabel_mobil tm
right join tabel_transaksi tt
on tm.id_mobil = tt.id_mobil;
-- FULL OUTER
select
		tm.nama_mobil,
        tm.merk,
        tm.transmisi,
        tm.mesin,
        tm.tipe_bahan_bakar,
        tm.warna
from tabel_mobil tm
left join tabel_transaksi tt
on tm.id_mobil = tt.id_mobil
union
select
		tm.nama_mobil,
        tm.merk,
        tm.transmisi,
        tm.mesin,
        tm.tipe_bahan_bakar,
        tm.warna
from tabel_mobil tm
right join tabel_transaksi tt
on tm.id_mobil = tt.id_mobil;

alter table pegawai rename to nama_tabel;
alter table nama_tabel rename to pegawai;
-- Mengubah tipe data pada 1 kolom dari suatu tabel 
alter table pegawai
modify pemberian_pelaporan_kepada varchar(30);
alter table pegawai
modify pemberian_pelaporan_kepada int;
-- Mengubah nama dari 1 kolom dari suatu tabel 
alter table pegawai
change
nama_pegawai nama varchar(50);
alter table pegawai
change
nama nama_pegawai varchar(50);
-- Mengubah posisi 1 kolom dari suatu tabel 
alter table pegawai
modify
nama_pegawai varchar(50) after pemberian_pelaporan_kepada;
alter table pegawai
modify
pemberian_pelaporan_kepada int after nama_pegawai;
-- Menambahkan 1 kolom baru pada suatu tabel 
alter table pegawai
add catatan varchar(100)
after pemberian_pelaporan_kepada;
-- Menghapus 1 kolom baru tersebut dari suatu table
alter table pegawai
drop catatan;

-- Buatlah relasi antara 3 tabel tersebut menggunakan FOREIGN KEY kearah tabel Transaksi.
alter table tabel_transaksi
add constraint fk_id_pembeli foreign key (id_pembeli)
references tabel_pembeli (id_pembeli),
add constraint fk_id_mobil foreign key (id_mobil)
references tabel_mobil (id_mobil);

-- Terapkanlah pemahaman anda mengenai TRANSACTION pada 2 tabel
START TRANSACTION;
INSERT INTO tabel_transaksi VALUES(230710006, 17060011, 1121101, '2023-01-01', 1, 70000000, 'Cicilan', 36, 10000000, 'Belum Lunas', 5, '2028-01-01');
UPDATE tabel_mobil set stok = STOK - 1
WHERE id_mobil = 230710006;
COMMIT;

-- Gunakanlah INDEX pada 2 tabel, dan masing-masing tabel pada 3 kolom. Untuk tabel dan kolomnya dibebaskan kepada anda untuk menentukan. Setelah itu tunjukkan kedua tabel tersebut telah sukses ditambahkan INDEX, menggunakan SHOW.
alter table pegawai
		add index kombinasi_idx
		(
			id_pegawai,
			nama_pegawai,
			pemberian_pelaporan_kepada
		);
alter table tabel_mobil
		add index kombinasi_idx2
        (
			id_mobil,
			nama_mobil,
			merk
		);
show create table tabel_mobil;