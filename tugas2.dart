void main() {
  // LIST
  var mahasiswa = <String>["Andi", "Budi", "Citra", "Dewi", "Eka"];
  print("Daftar Mahasiswa (List) : $mahasiswa");
  print("Jumlah mahasiswa: ${mahasiswa.length}");
  print("Mahasiswa pertama: ${mahasiswa[0]}");

  // SET
  Set<String> mataKuliahUnik = {"Cloud Computing", "Basis Data", "Pemrograman", "Jaringan"};
  print("\nMata Kuliah Unik (Set) : $mataKuliahUnik");

  mataKuliahUnik.add("Big Data");
  print("Setelah menambahkan Big Data: $mataKuliahUnik");

  mataKuliahUnik.remove("Jaringan");
  print("Setelah menghapus Jaringan: $mataKuliahUnik");

  // MAP
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    "Andi": {
      "NIM": "2023001",
      "Mata Kuliah": ["Cloud Computing", "Basis Data", "Pemrograman"]
    },
    "Budi": {
      "NIM": "2023002",
      "Mata Kuliah": ["Cloud Computing", "Big Data"]
    },
    "Citra": {
      "NIM": "2023003",
      "Mata Kuliah": ["Jaringan", "Basis Data"]
    },
    "Dewi": {
      "NIM": "2023004",
      "Mata Kuliah": ["Big Data", "Pemrograman"]
    },
    "Eka": {
      "NIM": "2023005",
      "Mata Kuliah": ["Cloud Computing", "Jaringan"]
    },
  };

  print("\n== Data Mahasiswa Awal (Map) ==");
  dataMahasiswa.forEach((nama, detail) {
    print("Nama: $nama, NIM: ${detail['NIM']}, Mata Kuliah: ${detail['Mata Kuliah']}");
  });

  // Tambah mahasiswa baru
  dataMahasiswa["Fajar"] = {
    "NIM": "2023006",
    "Mata Kuliah": ["Basis Data", "Big Data", "Pemrograman"]
  };
  print("\n>> Mahasiswa baru 'Fajar' ditambahkan!");

  // Hapus mahasiswa (contoh: Budi)
  dataMahasiswa.remove("Budi");
  print(">> Mahasiswa 'Budi' dihapus!");

  print("\n== Data Mahasiswa Setelah Perubahan (Map) ==");
  dataMahasiswa.forEach((nama, detail) {
    print("Nama: $nama, NIM: ${detail['NIM']}, Mata Kuliah: ${detail['Mata Kuliah']}");
  });
}
