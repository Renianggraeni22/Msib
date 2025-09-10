// garasi.dart
import 'kendaraan.dart';

class Garasi {
  // Encapsulation: daftar kendaraan bersifat private
  final List<Kendaraan> _daftarKendaraan = [];

  void tambahKendaraan(Kendaraan kendaraan) {
    print("${kendaraan.merek} ${kendaraan.model} ditambahkan ke garasi.");
    _daftarKendaraan.add(kendaraan);
  }

  void tampilkanKendaraan() {
    print("\nDaftar Kendaraan di Garasi:");
    for (var k in _daftarKendaraan) {
      k.info(); // Polymorphism: method info() dipanggil sesuai objek
    }
  }

  void servisSemua() {
    print("\nMelakukan servis untuk semua kendaraan...");
    for (var k in _daftarKendaraan) {
      k.servis(); // Polymorphism: method servis() sesuai objek
    }
  }
}
