// main.dart
import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main() {
  Garasi garasi = Garasi();

  print("Menambahkan kendaraan ke garasi...");

  Mobil mobil1 = Mobil("Honda", "Civic", 2021, 4);
  Mobil mobil2 = Mobil("BMW", "X5", 2020, 5);
  Motor motor1 = Motor("Kawasaki", "Ninja ZX-25R", 2022, false);
  Motor motor2 = Motor("Suzuki", "Satria FU", 2019, true);

  garasi.tambahKendaraan(mobil1);
  garasi.tambahKendaraan(mobil2);
  garasi.tambahKendaraan(motor1);
  garasi.tambahKendaraan(motor2);

  garasi.tampilkanKendaraan();

  garasi.servisSemua();
}
