![Cover](https://github.com/dipintoo/worldcup_database/blob/main/img/Cover_2.jpg)

## Goals

Kita diberikan file `.csv` yang berisi data tim dan detail pertandingan piala dunia tahun 2014 dan 2018. Kita diminta membuat database relational nya dengan mengorganisir data berisi negara-negara partisipan dan data berisi detail pertandingan. Setelah itu, buat script bash yang mampu membaca data `.csv` untuk menginput data secara otomatis ke dalam database. Berikutnya, gunakan query SQL untuk menganalisis datanya.

## Alur Kerja

### [Database](https://github.com/dipintoo/worldcup_database/blob/main/simple_worldcup.sql)  

Membuat database `worldcup` yang terdiri dari tabel `teams` (berisi negara-negara partisipan) dan tabel `games` (berisi detail pertandingan). Terapkan konsep relational database dengan menentukan primary key untuk setiap tabel, menetapkan foreign key untuk menghubungkan tabel, dan memilih tipe data yang cocok.

![Cover](https://github.com/dipintoo/worldcup_database/blob/main/img/Database%20Design.png)

### [Algoritma Bash Script](https://github.com/dipintoo/worldcup_database/blob/main/insert_data.sh)

1. Baca file `.csv`, lalu tetapkan variabel inputnya sesuai dengan kolom yang ada pada file (perhatikan separatornya).
2. Periksa apakah nama tim yang akan ditambahkan sudah ada atau belum dalam tabel `teams`.

   - Jika belum ada, tambahkan nama tim ke tabel `teams`
   - Jika sudah ada, ambil ID (foreign key) dari tim tersebut agar tabel terhubung dan bisa menambahkan juga detail pertandingan ke tabel `games`.
   - Cetak pesan konfirmasi penambahan entri baru ke terminal.

### Analisis Data dengan Query SQL

Berdasarkan data yang telah berhasil ditambahkan ke database, kita bisa menganalisis data piala dunia tersebut menggunakan query SQL [seperti ini](https://github.com/dipintoo/worldcup_database/blob/main/queries.sh) berikut [hasil analisisnya](https://github.com/dipintoo/worldcup_database/blob/main/contoh_output.txt).
