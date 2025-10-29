import 'dart:io';

void main() {
  print("=== Kalkulator Sederhana Dart ===");

  // 1. Menerima Angka Pertama
  stdout.write("Masukkan angka pertama: ");
  String? inputAngka1 = stdin.readLineSync();
  double? angka1 = double.tryParse(inputAngka1 ?? '');

  // 2. Menerima Operator
  stdout.write("Masukkan operator (+, -, *, /): ");
  String? operator = stdin.readLineSync();

  // 3. Menerima Angka Kedua
  stdout.write("Masukkan angka kedua: ");
  String? inputAngka2 = stdin.readLineSync();
  double? angka2 = double.tryParse(inputAngka2 ?? '');

  // 4. Proses dan Validasi
  if (angka1 == null || operator == null || angka2 == null) {
    print("\n[ERROR] Input tidak valid. Pastikan semua input adalah angka atau operator yang benar.");
    return;
  }

  double hasil;

  // Menggunakan switch-case untuk memilih operasi
  switch (operator) {
    case '+':
      hasil = angka1 + angka2;
      break;
    case '-':
      hasil = angka1 - angka2;
      break;
    case '*':
      hasil = angka1 * angka2;
      break;
    case '/':
      if (angka2 != 0) {
        hasil = angka1 / angka2;
      } else {
        print("\n[ERROR] Pembagian dengan nol tidak diizinkan.");
        return;
      }
      break;
    default:
      print("\n[ERROR] Operator '$operator' tidak dikenali.");
      return;
  }

  // 5. Menampilkan Hasil
  print("---------------------------------");
  print("Hasil dari $angka1 $operator $angka2 adalah: $hasil");
  print("---------------------------------");
}