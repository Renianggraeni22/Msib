// kendaraan.dart
abstract class Kendaraan {
  String merek;
  String model;
  int tahun;

  Kendaraan(this.merek, this.model, this.tahun);

  // Abstraction: setiap turunan wajib implementasi
  void servis();

  // Bisa dioverride oleh subclass
  void info();
}
