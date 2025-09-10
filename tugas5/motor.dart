// motor.dart
import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool adaKeranjang;

  Motor(String merek, String model, int tahun, this.adaKeranjang)
      : super(merek, model, tahun);

  @override
  void servis() {
    print("Servis motor $merek $model dilakukan.");
  }

  @override
  void info() {
    String keranjang = adaKeranjang ? "Dengan Keranjang" : "Tanpa Keranjang";
    print("- Motor: $merek $model ($tahun) - $keranjang");
  }
}
