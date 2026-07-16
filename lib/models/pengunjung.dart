// ==========================================
// Class Pengunjung
// ==========================================

import 'jadwal_film.dart';

class Pengunjung {
  String nama;

  // Constructor
  Pengunjung(this.nama);

  // Menampilkan film yang dipilih
  void pilihFilm(JadwalFilm film) {
    print("\n$nama memilih film:");
    film.tampilkanInfo();
  }
}