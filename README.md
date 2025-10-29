Nama : Sarah Shiba Huwaidah <br>
NIM  : H1D023044 <br>
Shift awal : A <br>
Shift akhir : C <br>

Penjelasan code :

Proyek ini adalah implementasi sederhana dari kalkulator empat fungsi dasar (+, -, *, /) yang berjalan sebagai aplikasi konsol (Command Line Interface - CLI) menggunakan bahasa pemrograman Dart.

## Fitur

* **Operasi Dasar:** Mendukung penjumlahan (`+`), pengurangan (`-`), perkalian (`*`), dan pembagian (`/`).
* **Input/Output Konsol:** Menggunakan `dart:io` untuk interaksi pengguna.
* **Validasi Angka:** Menggunakan `double.tryParse` untuk memastikan input yang dimasukkan adalah angka.
* **Penanganan Error Dasar:** Mencegah program *crash* saat terjadi pembagian dengan nol.



## Penjelasan Kode

1.  **`import 'dart:io';`**
    Diperlukan untuk membaca input dari pengguna (`stdin.readLineSync()`) dan menulis output (`stdout.write()`).

2.  **Validasi dan Konversi Input**
    ```dart
    String? inputAngka = stdin.readLineSync();
    double? angka = double.tryParse(inputAngka ?? '');
    ```
    * `stdin.readLineSync()` membaca input sebagai `String`.
    * `double.tryParse()` mencoba mengubah `String` menjadi angka desimal (`double`). Jika input bukan angka, hasilnya adalah `null`, yang digunakan untuk mendeteksi input yang tidak valid.

3.  **Logika Operasi dengan `switch-case`**
    ```dart
    switch (operator) {
      case '+':
        // ...
        break;
      // ...
    }
    ```
    Struktur kontrol yang efisien untuk memilih operasi matematika yang benar berdasarkan operator yang dimasukkan pengguna.

4.  **Penanganan Pembagian Nol**
    Dilakukan pemeriksaan `if (angka2 != 0)` di dalam kasus pembagian (`/`) untuk menghindari *runtime error*.

