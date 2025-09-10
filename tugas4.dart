import 'dart:io';

// Fungsi dengan parameter untuk menghitung total gaji pegawai
int hitungTotalGaji(int gajiPokok, int tunjangan) {
  return gajiPokok + tunjangan;
}

// Fungsi dengan default parameter untuk menentukan tunjangan
int hitungTunjangan({String jabatan = "Staff"}) {
  if (jabatan.toLowerCase() == "manager") {
    return 2000000;
  } else if (jabatan.toLowerCase() == "supervisor") {
    return 1500000;
  } else {
    return 1000000; // default untuk staff
  }
}

// Fungsi rekursif untuk menghitung bonus tahunan
int hitungBonus(int tahunKerja) {
  if (tahunKerja == 0) {
    return 0;
  } else {
    return 500000 + hitungBonus(tahunKerja - 1);
  }
}

// Arrow function untuk menghitung gaji bersih setelah pajak
double gajiBersih(int gaji, double pajak) => gaji - (gaji * pajak);

void main() {
  // Input jumlah pegawai
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);

  // Menampilkan nomor pegawai dengan perulangan
  print("\n== Nomor Pegawai (for loop) ==");
  for (int i = 1; i <= jumlahPegawai; i++) {
    print("Pegawai ke-$i");
  }

  print("\n== Nomor Pegawai (while loop) ==");
  int i = 1;
  while (i <= jumlahPegawai) {
    print("Pegawai ke-$i");
    i++;
  }

  print("\n== Nomor Pegawai (do-while loop) ==");
  int j = 1;
  do {
    print("Pegawai ke-$j");
    j++;
  } while (j <= jumlahPegawai);

  // Menampilkan daftar pegawai genap dan ganjil
  print("\n== Pegawai dengan ID Ganjil ==");
  for (int k = 1; k <= jumlahPegawai; k++) {
    if (k % 2 != 0) print("Pegawai ID: $k");
  }

  print("\n== Pegawai dengan ID Genap ==");
  for (int k = 1; k <= jumlahPegawai; k++) {
    if (k % 2 == 0) print("Pegawai ID: $k");
  }

  // Menyimpan data pegawai dalam list
  List<Map<String, dynamic>> pegawai = [];

  for (int x = 1; x <= jumlahPegawai; x++) {
    stdout.write("\nMasukkan nama pegawai ke-$x: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan jabatan (Manager/Supervisor/Staff): ");
    String jabatan = stdin.readLineSync()!;
    stdout.write("Masukkan tahun kerja: ");
    int tahunKerja = int.parse(stdin.readLineSync()!);

    int tunjangan = hitungTunjangan(jabatan: jabatan);
    int gajiPokok = 5000000;
    int totalGaji = hitungTotalGaji(gajiPokok, tunjangan);
    int bonus = hitungBonus(tahunKerja);
    int totalKeseluruhan = totalGaji + bonus; // total gaji per pegawai
    double bersih = gajiBersih(totalKeseluruhan, 0.1); // pajak 10%

    pegawai.add({
      "id": x,
      "nama": nama,
      "jabatan": jabatan,
      "tahunKerja": tahunKerja,
      "gajiPokok": gajiPokok,
      "tunjangan": tunjangan,
      "totalGaji": totalGaji,
      "bonus": bonus,
      "totalKeseluruhan": totalKeseluruhan,
      "gajiBersih": bersih,
    });
  }

  // Cetak data pegawai dengan for-in
  print("\n== Daftar Pegawai (for-in) ==");
  for (var p in pegawai) {
    print("${p['id']}. ${p['nama']} - ${p['jabatan']}");
  }

  // Cetak detail pegawai dalam bentuk tabel
  print("\n== Detail Pegawai (foreach) ==");

  // Tentukan lebar kolom
  int totalLebar = 115;
  print("=" * totalLebar);
  print(
    "| ${'ID'.padRight(3)}"
    "| ${'Nama'.padRight(12)}"
    "| ${'Jabatan'.padRight(12)}"
    "| ${'Tahun'.padRight(6)}"
    "| ${'Gaji Pokok'.padLeft(12)}"
    "| ${'Tunjangan'.padLeft(12)}"
    "| ${'Bonus'.padLeft(12)}"
    "| ${'Total Gaji'.padLeft(12)}"
    "| ${'Gaji Bersih'.padLeft(12)} |",
  );
  print("=" * totalLebar);

  pegawai.forEach((p) {
    print(
      "| ${p['id'].toString().padRight(3)}"
      "| ${p['nama'].padRight(12)}"
      "| ${p['jabatan'].padRight(12)}"
      "| ${p['tahunKerja'].toString().padRight(6)}"
      "| Rp${p['gajiPokok'].toString().padLeft(10)}"
      "| Rp${p['tunjangan'].toString().padLeft(10)}"
      "| Rp${p['bonus'].toString().padLeft(10)}"
      "| Rp${p['totalKeseluruhan'].toString().padLeft(10)}"
      "| Rp${p['gajiBersih'].toStringAsFixed(2).padLeft(10)} |",
    );
  });

  print("=" * totalLebar);
}
