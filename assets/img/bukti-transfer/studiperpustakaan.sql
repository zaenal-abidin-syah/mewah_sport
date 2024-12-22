/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     28/05/2024 20:35:24                          */
/*==============================================================*/


drop table if exists ANGGOTA;

drop table if exists BUKU;

drop table if exists MEMILIKI;

drop table if exists PENERBIT;

drop table if exists PENGARANG;

drop table if exists PETUGAS;

drop table if exists TRANSAKSI_PEMINJAMAN;

drop table if exists TRANSAKSI_PENGEMBALIAN;

/*==============================================================*/
/* Table: ANGGOTA                                               */
/*==============================================================*/
create table ANGGOTA
(
   ID_ANGGOTA           varchar(10) not null,
   NAMA_ANGGOTA         varchar(50),
   KUOTA                int,
   primary key (ID_ANGGOTA)
);

/*==============================================================*/
/* Table: BUKU                                                  */
/*==============================================================*/
create table BUKU
(
   ID_BUKU              varchar(10) not null,
   ID_PENERBIT          varchar(10),
   JUDUL_BUKU           varchar(200),
   STOCK                int,
   TAHUN_TERBIT         varchar(50),
   KATEGORI_BUKU        varchar(50),
   primary key (ID_BUKU)
);

/*==============================================================*/
/* Table: MEMILIKI                                              */
/*==============================================================*/
create table MEMILIKI
(
   ID_BUKU              varchar(10) not null,
   ID_PENGARANG         varchar(10) not null,
   primary key (ID_BUKU, ID_PENGARANG)
);

/*==============================================================*/
/* Table: PENERBIT                                              */
/*==============================================================*/
create table PENERBIT
(
   ID_PENERBIT          varchar(10) not null,
   NAMA_PENERBIT        varchar(100),
   primary key (ID_PENERBIT)
);

/*==============================================================*/
/* Table: PENGARANG                                             */
/*==============================================================*/
create table PENGARANG
(
   ID_PENGARANG         varchar(10) not null,
   NAMA_PENGARANG       varchar(100),
   primary key (ID_PENGARANG)
);

/*==============================================================*/
/* Table: PETUGAS                                               */
/*==============================================================*/
create table PETUGAS
(
   ID_PETUGAS           varchar(10) not null,
   NAMA_PETUGAS         varchar(100),
   primary key (ID_PETUGAS)
);

/*==============================================================*/
/* Table: TRANSAKSI_PEMINJAMAN                                  */
/*==============================================================*/
create table TRANSAKSI_PEMINJAMAN
(
   ID_PEMINJAMAN        varchar(10) not null,
   ID_PETUGAS           varchar(10),
   ID_ANGGOTA           varchar(10),
   TGL_PEMINJAMAN       date,
   primary key (ID_PEMINJAMAN)
);

/*==============================================================*/
/* Table: TRANSAKSI_PENGEMBALIAN                                */
/*==============================================================*/
create table TRANSAKSI_PENGEMBALIAN
(
   ID_TRANSAKSI_PENGEMBALIAN varchar(10) not null,
   ID_BUKU              varchar(10),
   ID_PETUGAS           varchar(10),
   ID_PEMINJAMAN        varchar(10),
   TANGGAL_KEMBALI      date,
   TANGGAL_AKTUAL_KEMBALI date,
   STATUS_BUKU          bool,
   primary key (ID_TRANSAKSI_PENGEMBALIAN)
);

alter table BUKU add constraint FK_RELATIONSHIP_2 foreign key (ID_PENERBIT)
      references PENERBIT (ID_PENERBIT) on delete restrict on update restrict;

alter table MEMILIKI add constraint FK_MEMILIKI foreign key (ID_BUKU)
      references BUKU (ID_BUKU) on delete restrict on update restrict;

alter table MEMILIKI add constraint FK_MEMILIKI2 foreign key (ID_PENGARANG)
      references PENGARANG (ID_PENGARANG) on delete restrict on update restrict;

alter table TRANSAKSI_PEMINJAMAN add constraint FK_RELATIONSHIP_3 foreign key (ID_PETUGAS)
      references PETUGAS (ID_PETUGAS) on delete restrict on update restrict;

alter table TRANSAKSI_PEMINJAMAN add constraint FK_RELATIONSHIP_4 foreign key (ID_ANGGOTA)
      references ANGGOTA (ID_ANGGOTA) on delete restrict on update restrict;

alter table TRANSAKSI_PENGEMBALIAN add constraint FK_RELATIONSHIP_5 foreign key (ID_BUKU)
      references BUKU (ID_BUKU) on delete restrict on update restrict;

alter table TRANSAKSI_PENGEMBALIAN add constraint FK_RELATIONSHIP_6 foreign key (ID_PEMINJAMAN)
      references TRANSAKSI_PEMINJAMAN (ID_PEMINJAMAN) on delete restrict on update restrict;

alter table TRANSAKSI_PENGEMBALIAN add constraint FK_RELATIONSHIP_7 foreign key (ID_PETUGAS)
      references PETUGAS (ID_PETUGAS) on delete restrict on update restrict;

