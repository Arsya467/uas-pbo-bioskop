// ==========================================
// Class Turunan Jadwal Pagi
// ==========================================

import 'jadwal_film.dart';

class JadwalPagi extends JadwalFilm {
  String jamTayang;

  // Constructor
  JadwalPagi(
    String namaFilm,
    int durasi,
    double harga,
    this.jamTayang,
  ) : super(namaFilm, durasi, harga);

  // Override method dari class induk
  @override
  void tampilkanInfo() {
    print(
        "PAGI | $namaFilm | Jam: $jamTayang | Durasi: $durasi menit | Harga: Rp${harga.toStringAsFixed(0)}");
  }
}