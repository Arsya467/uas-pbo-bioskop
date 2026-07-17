# UAS Pemrograman Berorientasi Objek (Dart)

## Identitas

Nama : Muhammad Arsya Falevi

NIM  : 251240001628

## Tema

**Sistem Pemesanan Tiket Bioskop** - aplikasi CLI (Command Line Interface) sederhana untuk mengelola data film yang ada di bioskop.


## Konsep OOP yang Digunakan

| Konsep | Implementasi |
|---------|--------------|
| **Class & Object** | `JadwalFilm` (class induk), `JadwalPagi`, `JadwalMalam`, `Pengunjung`, dan `Manager`. |
| **Encapsulation** | Menggunakan field private (`_namaFilm`, `_durasi`, `_harga`) dengan getter, setter, dan validasi data. |
| **Inheritance** | `JadwalPagi` dan `JadwalMalam` merupakan turunan dari `JadwalFilm`. |
| **Polymorphism** | Method `tampilkanInfo()` dioverride pada class turunan dan dipanggil melalui objek bertipe `JadwalFilm`. |
| **Collection** | Menggunakan `List<JadwalFilm>` untuk menyimpan seluruh data film. |
| **Higher Order Function** | Menggunakan `.where()` untuk mencari film dan `.fold()` untuk menghitung total harga film. |
| **Exception** | Menggunakan `DataTidakValidException` serta `try-catch` untuk menangani input yang tidak valid. |
| **Async/Await** | Method `simpanData()` menggunakan `Future.delayed()` dan `await` untuk mensimulasikan proses penyimpanan data. |

---

## Struktur Folder

```text
project_uas_bioskop/

├── bin/
│   └── main.dart
│
├── lib/
│   ├── models/
│   │   ├── jadwal_film.dart
│   │   ├── jadwal_pagi.dart
│   │   ├── jadwal_malam.dart
│   │   └── pengunjung.dart
│   │
│   ├── controllers/
│   │   └── manager.dart
│   │
│   └── exceptions/
│       └── data_tidak_valid_exception.dart
│
├── pubspec.yaml
└── README.md
```

---
## Fitur

Program menampilkan menu berikut saat dijalankan:

```text
===== SISTEM PEMESANAN TIKET BIOSKOP =====

1. Tambah Film
2. Lihat Semua Film
3. Cari Film
4. Hitung Total Harga
5. Simpan Data
6. Keluar
```
| Menu | Fungsi |
|------|--------|
| 1. Tambah Film | Menambahkan data film baru. |
| 2. Lihat Semua Film | Menampilkan seluruh data film. |
| 3. Cari Film | Mencari film menggunakan `.where()`. |
| 4. Hitung Total Harga | Menghitung total menggunakan `.fold()`. |
| 5. Simpan Data | Simulasi penyimpanan data (`async/await`). |
| 6. Keluar | Menutup program. |

---

## Cara Menjalankan (Di terminal)
**1. Pastikan Dart SDK sudah terpasang.**

**2. Masuk ke folder project.**

```bash
cd project_uas_bioskop
```

**3. Install dependency.**

```bash
dart pub get
```

**4. Jalankan program.**

```bash
dart run bin/main.dart
```

---
