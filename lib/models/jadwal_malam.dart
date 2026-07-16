// ==========================================
// Class Turunan Jadwal Malam
// ==========================================

import 'jadwal_film.dart';

class JadwalMalam extends JadwalFilm {
  String jamTayang;

  // Constructor
  JadwalMalam(
    String namaFilm,
    int durasi,
    double harga,
    this.jamTayang,
  ) : super(namaFilm, durasi, harga);

  // Override method dari class induk
  @override
  void tampilkanInfo() {
    print(
        "MALAM | $namaFilm | Jam: $jamTayang | Durasi: $durasi menit | Harga: Rp${harga.toStringAsFixed(0)}");
  }
}