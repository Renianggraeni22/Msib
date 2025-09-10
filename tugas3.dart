import 'dart:io';

void main() {
  print("== Program Pengecekan Nilai Siswa ==");
  // Input data siswa
  stdout.write("Masukkan nama: ");
  String? nama = stdin.readLineSync();
  stdout.write("Masukkan nilai (0-100): ");
  String? inputNilai = stdin.readLineSync();
  if (nama == null || inputNilai == null) {
    print("Input tidak boleh kosong!");
    return;
  }
  int nilai = int.parse(inputNilai);
  // Evaluasi dengan if-else
  print("\n== Evaluasi dengan If-Else ==");
  cekNilaiIfElse(nama, nilai);
  // Evaluasi dengan switch-case
  print("\n== Evaluasi dengan Switch-Case ==");
  cekNilaiSwitch(nama, nilai);
}

// Fungsi untuk mengecek nilai dengan if-else
void cekNilaiIfElse(String nama, int nilai) {
  String kategori;
  if (nilai >= 90) {
    kategori = "A - Sangat Baik";
  } else if (nilai >= 80) {
    kategori = "B - Baik";
  } else if (nilai >= 70) {
    kategori = "C - Cukup";
  } else if (nilai >= 60) {
    kategori = "D - Kurang";
  } else {
    kategori = "E - Gagal";
  }
  print("Nama: $nama");
  print("Nilai: $nilai");
  print("Kategori: $kategori");
}

// Fungsi untuk mengecek nilai dengan switch-case
void cekNilaiSwitch(String nama, int nilai) {
  String kategori;
  switch (nilai ~/ 10) {
    // pembagian bulat untuk kelompokkan nilai
    case 10:
    case 9:
      kategori = "A";
      break;
    case 8:
      kategori = "B";
      break;
    case 7:
      kategori = "C";
      break;
    case 6:
      kategori = "D";
      break;
    default:
      kategori = "E";
  }
  print("Nama: $nama");
  print("Nilai: $nilai");
  print("Kategori: $kategori");
}
