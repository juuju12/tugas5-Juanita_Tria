-- Soal 1--
--a. membuat database
create database books_store;

--b. membuat table
create table Books(
    IdBuku int primary key not null auto_increment,
    JudulBuku varchar(45),
    Pengarang varchar(45),
    TahunTerbit int,
    Penerbit varchar(45),
    TanggalDibuat date default current_date,
    TanggalDiupdate date default current_date);

create table category(
    IdCategory int primary key not null auto_increment,
    NamaCategory varchar(45),
    TanggalDibuat date default current_date,
    TanggalDiupdate date default current_date);

--Soal 2--
--a. tabel books

insert into books(JudulBuku, Pengarang, Tahunterbit, Penerbit, tanggalDibuat, TanggalDiupdate) values (
"Building Microservices", "Sam Newman", 2014, "O'Reilly Media", "2023-09-18", "2023-09-18"),
("Clean Code", "Robert C. Martin", 2008, "Prentice Hall", "2023-09-18", "2023-09-18"),
("The Pragmatic Programmer", "Andrwe Hunt", 1999, "addison-wesley", "2023-09-18", "2023-09-18"),
("Design Patterns", "Erich Gamma", 1994, "addison-wesley", "2023-09-18", "2023-09-18"),
("Introduction to Algorithms", "Thomas H.Cormen", 1990, "MIT Press", "2023-09-18", "2023-09-18"),
("The Art of Computer Prog.", "Donald E.Knuth", 1968, "addison-wesley", "2023-09-18", "2023-09-18"),
("Clean Architecture", "Robert C.Martin", 2017, "Prentice Hall", "2023-09-18", "2023-09-18"),
("Refactoring", "Martin Fowler", 1999, "addison-wesley", "2023-09-18", "2023-09-18"),
("Domain-Driven Design", "Eric Evans", 2003, "addison-wesley", "2023-09-18", "2023-09-18"),
("The Mythical Man-Month", "Frederick Books", 1975, "addison-wesley", "2023-09-18", "2023-09-18");

--b. tabel category

insert into category(NamaCategory, tanggaldibuat, tanggaldiupdate) values (
"Pemrograman", "2023-09-18", "2023-09-18"),
("Fiksi", "2023-09-18", "2023-09-18"),
("Nonfiksi", "2023-09-18", "2023-09-18"),
("Bisnis", "2023-09-18", "2023-09-18"),
("Teknologi", "2023-09-18", "2023-09-18"),
("Seni", "2023-09-18", "2023-09-18"),
("Sejarah", "2023-09-18", "2023-09-18"),
("Sains", "2023-09-18", "2023-09-18"),
("Hukum", "2023-09-18", "2023-09-18"),
("Kesehatan", "2023-09-18", "2023-09-18");


--Soal 3--
--a. menampilkan data tabel books
select * from books;


--b. Menampilkan data tabel category
select * from category;

--Soal 4--
update books set judulbuku = "Building Microservices: Designing Fine-Grained Systems 1st", tahunterbit = 2015, tanggaldiupdate="2023-09-20" where idbuku = 1;

--Soal 5--
--a. tabel books
delete from books where idbuku = 10;

--b. tabel category
delete from category where idcategory = 10;

--Soal 6--
--a. menampilkan judul buku dengan oenerbit addison-wesley
select judulbuku from books where penerbit="addison-wesley";

--b. menampilkan data buku dengan rentan tahun terbit 2003-2023
select * from books where tahunterbit >=2003 AND tahunterbit<=2023;

--c. menampilkan data buku dengan judul mengandung kata design
select * from books where judulbuku like "%design%";


--Soal 7--
--membuat tabel book_category
create table book_categories (

    id int primary key not null auto_increment,
    idCategory int,
    idBook int,
    tanggaldibuat date default current_date,
    tanggaldiupdate date default current_date,
    foreign key (idCategory) references category (idcategory) on update cascade on delete cascade,
    foreign key (idBook) references books (idbuku) on update cascade on delete cascade);


--Soal 8---
insert into book_categories (idcategory, Idbook, tanggaldibuat, tanggaldiupdate) values (
1, 2, "2023-09-18", "2023-09-18"),
(5, 3, "2023-09-18", "2023-09-18"),
(1, 1, "2023-09-18", "2023-09-18");



--Soal 9--
select idbuku AS "id", judulbuku AS "judul buku", namacategory as "nama category" from books inner join category on books.idbuku = category.idcategory;

--Soal 10--
alter table books add jumlah_halaman int(8);
