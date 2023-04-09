create table lokasyon(
	lokasyonID int primary key identity(1,1) NOT NULL,
	il nvarchar(30) NOT NULL,
	ilce nvarchar (30) NOT NULL,
	odaSayisi int NOT NULL
);

create table toplantiOdasi(
	toplantiID int primary key identity(1,1) NOT NULL,
	odaAdi nvarchar(30) NOT NULL,
);

create table odaOzellik(
	odaID int primary key identity(1,1) NOT NULL,
	kapasite int NOT NULL,
	internet bit NOT NULL,
	projeksiyon bit NOT NULL,
	klima bit NOT NULL,
	bilgisayar bit NOT NULL
);

create table personel(
	personelID int primary key identity(1,1) NOT NULL,
	isim nvarchar(30) NOT NULL,
	soyisim nvarchar(30) NOT NULL,
	telefon char(10) NOT NULL,
	mail nvarchar(30) NOT NULL,
	ikametgah nvarchar(50) NOT NULL,
	maas int NOT NULL,
	departman nvarchar(20) NOT NULL,
	reportTo int NOT NULL
);

create table odaAdmin(
	adminID int primary key identity(1,1) NOT NULL,
	isim nvarchar(30) NOT NULL,
	soyisim nvarchar(30) NOT NULL,
	telefon char(10) NOT NULL
);

create table musteri(
	musteriID int primary key identity(1,1) NOT NULL,
	isim nvarchar(30) NOT NULL,
	soyisim nvarchar(30) NOT NULL,
	telefon char(10) NOT NULL,
	mail nvarchar(30) NOT NULL
);

create table kayit(
	kayitID int primary key identity(1,1) NOT NULL,
	sure int NOT NULL,
	tarih date NOT NULL,
	odemeDurumu bit NOT NULL
);

/*toplantiOdasi ikincil anahtar ekleme*/
alter table toplantiOdasi
add lokasyonID int NOT NULL

/*odaOzellik ikincil anahtar ekleme*/
alter table odaOzellik
add lokasyonID int NOT NULL,  toplantiID int NOT NULL

/*kayit ikincil anahtar ekleme*/
alter table kayit
add toplantiID int NOT NULL, musteriID int NOT NULL

/*odaAdmin ikincil anahtar ekleme*/
alter table odaAdmin
add toplantiID int NOT NULL, personelID int NOT NULL

/*lokasyon tablosu verileri girme:*/
insert into lokasyon values ('Ýstanbul', 'Kadýköy', 2)
insert into lokasyon values ('Ýzmir', 'Karþýyaka', 2)
insert into lokasyon values ('Ankara', 'Çankaya', 2)
insert into lokasyon values ('Bursa', 'Nilüfer', 1)
insert into lokasyon values ('Ýstanbul', 'Beþiktaþ', 3)

/*lokasyon tablosu verileri girme:*/
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)
insert into toplantiOdasi values ('Ýstanbul', 'Kadýköy', 2)