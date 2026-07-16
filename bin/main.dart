import 'dart:io';

import '../lib/controllers/manager.dart';
import '../lib/models/jadwal_pagi.dart';
import '../lib/models/jadwal_malam.dart';
import '../lib/exceptions/data_tidak_valid_exception.dart';

void main() async {
  Manager manager = Manager();

  while (true) {
    print("\n===== SISTEM PEMESANAN TIKET BIOSKOP =====");
    print("1. Tambah Film");
    print("2. Lihat Semua Film");
    print("3. Cari Film");
    print("4. Hitung Total Harga");
    print("5. Simpan Data");
    print("6. Keluar");

    stdout.write("Pilih menu : ");

    try {
      int menu = int.parse(stdin.readLineSync()!);

      switch (menu) {
        case 1:
          stdout.write("Jenis Film (1.Pagi / 2.Malam): ");
          int jenis = int.parse(stdin.readLineSync()!);

          stdout.write("Nama Film : ");
          String nama = stdin.readLineSync()!;

          stdout.write("Durasi (menit) : ");
          int durasi = int.parse(stdin.readLineSync()!);

          stdout.write("Harga Tiket : ");
          double harga = double.parse(stdin.readLineSync()!);

          stdout.write("Jam Tayang : ");
          String jam = stdin.readLineSync()!;

          if (jenis == 1) {
            manager.tambahFilm(
              JadwalPagi(nama, durasi, harga, jam),
            );
          } else if (jenis == 2) {
            manager.tambahFilm(
              JadwalMalam(nama, durasi, harga, jam),
            );
          } else {
            print("Jenis film tidak tersedia.");
          }

          break;

        case 2:
          manager.tampilkanSemuaFilm();
          break;

        case 3:
          stdout.write("Masukkan nama film : ");
          String cari = stdin.readLineSync()!;
          manager.cariFilm(cari);
          break;

        case 4:
          print(
              "Total Harga Film : Rp${manager.hitungTotalHarga().toStringAsFixed(0)}");
          break;

        case 5:
          await manager.simpanData();
          break;

        case 6:
          print("Terima kasih.");
          return;

        default:
          print("Menu tidak tersedia.");
      }
    }

    // Custom Exception
    on DataTidakValidException catch (e) {
      print(e);
    }

    // Error Input
    catch (e) {
      print("Input tidak valid.");
    }
  }
}