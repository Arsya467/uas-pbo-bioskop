// ==========================================
// Class Induk Jadwal Film
// ==========================================

import '../exceptions/data_tidak_valid_exception.dart';

abstract class JadwalFilm {
  // Encapsulation (field private)
  String _namaFilm;
  int _durasi;
  double _harga;

  // Constructor
  JadwalFilm(this._namaFilm, this._durasi, this._harga);

  // Getter
  String get namaFilm => _namaFilm;
  int get durasi => _durasi;
  double get harga => _harga;

  // Setter + Validasi
  set durasi(int value) {
    if (value <= 0) {
      throw DataTidakValidException(
          "Durasi film tidak boleh kurang dari 1 menit.");
    }
    _durasi = value;
  }

  set harga(double value) {
    if (value < 0) {
      throw DataTidakValidException(
          "Harga tiket tidak boleh negatif.");
    }
    _harga = value;
  }

  // Method yang akan dioverride oleh class turunan
  void tampilkanInfo();
}