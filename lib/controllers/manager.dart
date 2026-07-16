// ==========================================
// Manager (Mengelola semua data film)
// ==========================================

import '../models/jadwal_film.dart';

class Manager {
  // Collection (List)
  final List<JadwalFilm> _daftarFilm = [];

  // Menambah film
  void tambahFilm(JadwalFilm film) {
    _daftarFilm.add(film);
    print("Film berhasil ditambahkan.");
  }

  // Menampilkan semua film
  void tampilkanSemuaFilm() {
    if (_daftarFilm.isEmpty) {
      print("Belum ada data film.");
      return;
    }

    print("\n===== DAFTAR FILM =====");

    for (var film in _daftarFilm) {
      film.tampilkanInfo();
    }
  }

  // Higher Order Function (.where)
  void cariFilm(String keyword) {
    var hasil = _daftarFilm.where(
      (film) =>
          film.namaFilm.toLowerCase().contains(keyword.toLowerCase()),
    );

    if (hasil.isEmpty) {
      print("Film tidak ditemukan.");
      return;
    }

    print("\nHasil Pencarian:");

    for (var film in hasil) {
      film.tampilkanInfo();
    }
  }

  // Higher Order Function (.fold)
  double hitungTotalHarga() {
    return _daftarFilm.fold(
      0,
      (total, film) => total + film.harga,
    );
  }

  // Async Await
  Future<void> simpanData() async {
    print("Menyimpan data...");

    await Future.delayed(Duration(seconds: 2));

    print("Data berhasil disimpan.");
  }
}