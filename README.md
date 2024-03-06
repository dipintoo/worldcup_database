![Cover]()

## Goals

Kita diberikan file `.csv` yang berisi data tim dan detail pertandingan piala dunia tahun 2014 dan 2018. Kita diminta membuat database relational nya dengan mengorganisir data berisi negara-negara partisipan dan data tabel berisi detail pertandingan. Setelah itu, buat script bash yang mampu membaca data .csv untuk memasukkan data secara otomatis ke dalam database. Setelah itu gunakan query SQL untuk menarik informasi bermanfaat dari database.

## Alur Kerja

### [Database](https://github.com/dipintoo/worldcup_database/blob/main/simple_worldcup.sql)  

Membuat database `worldcup` yang terdiri dari tabel `teams` (berisi negara-negara partisipan) dan tabel `games` (berisi detail pertandingan). Terapkan konsep relational database dengan menentukan primary key untuk setiap tabel, menetapkan foreign key untuk menghubungkan tabel, dan memilih tipe data yang cocok.

### [Algoritma Bash Script](https://github.com/dipintoo/worldcup_database/blob/main/insert_data.sh)

1. Baca file `.csv`, lalu tetapkan variabel inputnya sesuai dengan kolom yang ada pada file (perhatikan separatornya).
2. Periksa apakah nama tim yang akan ditambahkan sudah ada atau belum dalam tabel `teams`.

   - Jika belum ada, tambahkan nama tim ke tabel `teams`
   - Jika sudah ada, ambil ID (foreign key) dari tim tersebut agar tabel terhubung dan bisa menambahkan juga detail pertandingan ke tabel `games`.
   - Cetak pesan konfirmasi penambahan entri baru ke terminal.
