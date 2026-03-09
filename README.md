# Flutter Simple Article UI

Proyek ini adalah contoh antarmuka (UI) aplikasi seluler berbasis **Flutter** yang menampilkan halaman bacaan artikel sederhana beserta kolom komentar. Aplikasi ini dirancang dalam satu halaman penuh yang dapat digulir (*scrollable*).

## 💡 Penjelasan Struktur Kode

Berikut adalah rincian *widget* utama yang digunakan dalam kode ini:

* **`main()` & `MaterialApp`**
    Titik awal aplikasi beroperasi. `MaterialApp` digunakan sebagai kerangka dasar desain aplikasi.
* **`Scaffold` & `AppBar`**
    `Scaffold` menyediakan struktur *layout* dasar, sementara `AppBar` menampilkan bilah navigasi atas dengan judul "Flutter App one", ikon *home*, dan kustomisasi warna latar belakang.
* **`SingleChildScrollView`**
    *Widget* ini sangat penting karena membungkus seluruh konten utama (*body*). Ini memungkinkan layar untuk digulir (di-*scroll*) ke bawah dan mencegah *error pixel overflow* ketika konten lebih panjang dari ukuran layar perangkat.
* **Bagian Artikel (`Card`, `Column`, & `Image.network`)**
    * Label "Artikel Baru" disusun menyamping dengan ikon menggunakan `Row`.
    * Konten artikel dibungkus menggunakan `Card` agar terlihat rapi dengan efek bayangan.
    * Di dalam *card*, `Column` menyusun gambar yang diambil dari URL (`Image.network`) beserta judul dan paragraf artikel secara vertikal.
* **Bagian Komentar (`ListView` dengan `shrinkWrap`)**
    Menampilkan daftar komentar dari pengguna (CICI, KIKI, vivi). Menggunakan `ListView` dengan properti `shrinkWrap: true` agar list ini dapat beradaptasi dengan ukurannya dan tidak *error* saat diletakkan di dalam `Column` utama. Setiap komentar dibalut dengan `Card` dan `Padding` agar memiliki jarak yang estetis.

