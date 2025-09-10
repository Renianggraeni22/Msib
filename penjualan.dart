void main() {
  // Deklarasi Variabel
  String namaProduk = "Laptop";
  double hargaSatuan = 8000000;
  int jumlahBeli = 2;

  // Hitung Total Harga
  double totalHarga = hargaSatuan * jumlahBeli;

  // Tampilkan Hasil
  print("Nama Produk: $namaProduk");
  print("Harga Satuan: Rp ${hargaSatuan.toStringAsFixed(0)}");
  print("Jumlah Beli: $jumlahBeli");
  print("Total Harga: Rp ${totalHarga.toStringAsFixed(0)}");
}