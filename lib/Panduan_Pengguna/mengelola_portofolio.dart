import 'package:flutter/material.dart';

class MengelolaPortofolioPage extends StatefulWidget {
  const MengelolaPortofolioPage({super.key});

  @override
  State<MengelolaPortofolioPage> createState() => _KelengkapanProfilePageState();
}

class _KelengkapanProfilePageState extends State<MengelolaPortofolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(Icons.home_outlined, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ikmal Gilban Faresy",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      "PPLG XII-3",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                Icon(Icons.account_circle, color: Colors.black, size: 40),
              ],
            ),
          ),
          SizedBox(width: 5),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            color: Colors.grey.shade300,
            height: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Tombol kembali
      Row(
        children: [
          Icon(Icons.arrow_back_ios_new,
              size: 18, color: Color(0xFF00569D)),
          SizedBox(width: 5),
          Text(
            "Kembali ke Panduan Penggunaan",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF00569D),
            ),
          )
        ],
      ),

      SizedBox(height: 25),

      // Judul dua kolom
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.menu_book_outlined, color: Color(0xFF00569D)),
          SizedBox(width: 10),
          Text(
            "Panduan\nPenggunaan",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00569D),
            ),
          ),
          SizedBox(width: 60),
          Text(
            "Mengelola\nPortofolio",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF096ABA),
            ),
          ),
        ],
      ),

      SizedBox(height: 25),

      Text(
        "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus portfolio siswa.",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),

      SizedBox(height: 30),

      // BAGIAN A
      Text(
        "A. Menambah Portfolio Baru",
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF005CA7),
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 18),

      Text(
        "Berikut adalah langkah-langkah untuk menambahkan portfolio baru:",
        style: TextStyle(fontSize: 18),
      ),

      SizedBox(height: 20),

      // LIST POIN 1
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "1. Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab "),
            TextSpan(
              text: "Portfolio.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "2. Klik tombol "),
            TextSpan(
              text: "+ Tambah Portfolio.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),

      Text(
        "3. Isi form yang muncul dengan detail berikut:",
        style: TextStyle(fontSize: 18),
      ),

      SizedBox(height: 10),

      Padding(
        padding: EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(
                    text: "• Judul Portfolio: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Nama project/portfolio (wajib, maks 255 karakter)")
                ],
              ),
            ),
            SizedBox(height: 6),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(
                    text: "• Deskripsi: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Penjelasan detail tentang project (wajib)")
                ],
              ),
            ),
            SizedBox(height: 6),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(
                    text: "• Durasi Pengerjaan: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Waktu pengerjaan, contoh: \"3 bulan\", \"2 minggu\" (wajib)")
                ],
              ),
            ),
            SizedBox(height: 6),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(
                    text: "• Link Portfolio: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "URL project jika ada (opsional, harus valid)")
                ],
              ),
            ),
            SizedBox(height: 6),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(
                    text: "• Gambar Portfolio: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Screenshot atau foto project (opsional, maks 2MB)")
                ],
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 20),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18),
          children: [
            TextSpan(text: "4. Klik tombol "),
            TextSpan(
              text: "Simpan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: " untuk menyimpan portfolio."),
          ],
        ),
      ),

      SizedBox(height: 40),
            Text(
        "B. Mengedit Portfolio",
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF005CA7),
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 18),

      Text(
        "Berikut adalah langkah-langkah untuk mengedit portfolio:",
        style: TextStyle(fontSize: 18),
      ),

      SizedBox(height: 20),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "1. Temukan portfolio yang ingin diedit pada halaman "),
            TextSpan(
              text: "Portfolio.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "2. Klik ikon "),
            TextSpan(
              text: "pensil ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: " (✏️) pada card portfolio yang ingin diedit."
            )
          ],
        ),
      ),

      SizedBox(height: 10),

      Text(
        "3. Modal edit akan terbuka dengan data yang sudah terisi.",
        style: TextStyle(fontSize: 18, height: 1.6),
      ),

      SizedBox(height: 10),

      Text(
        "4. Ubah data yang diperlukan sesuai kebutuhan.",
        style: TextStyle(fontSize: 18, height: 1.6),
      ),

      SizedBox(height: 10),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "5. Klik tombol "),
            TextSpan(
              text: "Update",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: " untuk menyimpan perubahan."),
          ],
        ),
      ),

      SizedBox(height: 40),

      Text(
        "C. Menghapus Portfolio",
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF005CA7),
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 18),

      Text(
        "Berikut adalah langkah-langkah untuk menghapus portfolio:",
        style: TextStyle(fontSize: 18),
      ),

      SizedBox(height: 20),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "1. Temukan portfolio yang ingin dihapus pada halaman "),
            TextSpan(
              text: "Portfolio.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "2. Klik ikon Klik ikon "),
            TextSpan(
              text: "tempat sampah ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: " (🗑️) pada card portfolio."),
          ],
        ),
      ),

      SizedBox(height: 10),

      Text(
        "3. Konfirmasi penghapusan akan muncul.",
        style: TextStyle(fontSize: 18, height: 1.6),
      ),

      SizedBox(height: 10),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "4. Klik tombol "),
            TextSpan(
              text: "Ya, Hapus",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: " untuk menghapus portfolio."),
          ],
        ),
      ),

      SizedBox(height: 20),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6,),
          children: [
            TextSpan(
              text: "⚠️ ",
            ),
            TextSpan(
              text: "Catatan Penting: Penghapusan portfolio bersifat permanen dan tidak dapat dibatalkan.", 
              style: TextStyle(color: Colors.red,  fontWeight: FontWeight.bold)
            ),
          ],
        ),
      ),

      SizedBox(height: 50),
            Text(
        "D. Melihat Detail Portfolio",
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF005CA7),
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 18),

      Text(
        "Untuk melihat detail lengkap portfolio:",
        style: TextStyle(fontSize: 18),
      ),

      SizedBox(height: 20),

      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 18, height: 1.6),
          children: [
            TextSpan(text: "1. Klik tombol "),
            TextSpan(
              text: "Lihat Detail",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: " pada card portfolio."),
          ],
        ),
      ),

      SizedBox(height: 10),

      Text(
        "2. Halaman detail akan menampilkan informasi lengkap termasuk:",
        style: TextStyle(fontSize: 18, height: 1.6),
      ),

      SizedBox(height: 12),

      Padding(
        padding: EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "• Gambar portfolio (dapat diklik untuk preview ukuran penuh)",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 6),
            Text(
              "• Judul dan deskripsi lengkap",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 6),
            Text(
              "• Durasi pengerjaan",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 6),
            Text(
              "• Link portfolio (jika tersedia)",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 6),
            Text(
              "• Tanggal dibuat",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 6),
            Text(
              "• Portfolio lainnya dari pemilik yang sama",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),

      SizedBox(height: 16),

      Text(
        "3. Anda dapat mengedit atau menghapus portfolio langsung dari halaman detail jika Anda adalah pemiliknya.",
        style: TextStyle(fontSize: 18, height: 1.6),
      ),

      SizedBox(height: 40),

      Text(
        "E. Tips Portfolio yang Baik",
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF005CA7),
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 18),

      Text(
        "Untuk membuat portfolio yang berkualitas, perhatikan hal-hal berikut:",
        style: TextStyle(fontSize: 18, height: 1.6),
      ),

      SizedBox(height: 15),

      Padding(
        padding: EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "• Gunakan judul yang jelas dan menarik (maks 255 karakter)",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 8),
            Text(
              "• Tulis deskripsi yang detail dan informatif – deskripsi dapat mengandung line break untuk memudahkan pembacaan",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Isi durasi pengerjaan dengan jelas, contoh: \"2 minggu\", \"3 bulan\"",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "• Sertakan link project yang valid jika tersedia online (GitHub, demo live, dll)",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "• Upload gambar dengan kualitas baik (format: JPEG, PNG, JPG, GIF, maks 2MB)",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "• Pastikan semua informasi akurat dan up-to-date",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),

            Text(
              "F. Troubleshooting",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF005CA7),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 18),

            Text(
              "Jika mengalami masalah saat mengelola portfolio:",
              style: TextStyle(fontSize: 18, height: 1.6),
            ),

            SizedBox(height: 18),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18, height: 1.5),
                      children: [
                        TextSpan(
                          text: "• Modal tidak terbuka: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "Refresh halaman dan coba lagi"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18, height: 1.5),
                      children: [
                        TextSpan(
                          text: "• Error saat menyimpan: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "Periksa apakah semua field wajib sudah diisi dengan benar"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18, height: 1.5),
                      children: [
                        TextSpan(
                          text: "• Gambar tidak terupload: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "Pastikan ukuran gambar tidak melebihi 2MB dan format yang didukung (JPG, PNG, GIF)"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18, height: 1.5),
                      children: [
                        TextSpan(
                          text: "• Link tidak valid: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "Pastikan URL dimulai dengan http:// atau https://"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18, height: 1.5),
                      children: [
                        TextSpan(
                          text: "• Deskripsi mengandung enter: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "Sistem sekarang mendukung line break, pastikan browser Anda sudah di-refresh jika masih mengalami masalah"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
