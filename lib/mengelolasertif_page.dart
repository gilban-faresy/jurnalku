import 'package:flutter/material.dart';

class MengelolasertifPage extends StatelessWidget {
  const MengelolasertifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.attach_money_sharp),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.pushNamed(context, "/dashboard");
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt_sharp),
              title: Text("Progress"),
              onTap: () {
                Navigator.pushNamed(context, "/progress");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_sharp),
              title: Text("Setting"),
              onTap: () {
                Navigator.pushNamed(context, "/settings");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
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
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "PPLG XII-3",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                Icon(Icons.account_circle, color: Colors.black, size: 40),
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 20,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey.shade300, height: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 14,
                    color: Color.fromARGB(255, 8, 0, 255),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 8, 0, 255),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.menu_book_sharp,
                    size: 20,
                    color: Color.fromARGB(255, 8, 0, 255),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Panduan Penggunaan ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 8, 0, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Mengelola Sertifikat",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus sertifikat siswa.",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
              ),
              SizedBox(height: 15),
              Text(
                "A. Menambah Sertifikat Baru",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah langkah-langkah untuk menambahkan sertifikat baru:",
                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab Sertifikat.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "2.Klik tombol + Tambah Sertifikat.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "3.Isi form yang muncul dengan detail berikut:",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "-Judul: Nama sertifikat (wajib, maks 255 karakter)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Deskripsi: Penjelasan tentang sertifikat (opsional, maks 1000 karakter)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-File Sertifikat: Upload file sertifikat (wajib, maks 10MB)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "4.Klik tombol Simpan untuk menyimpan sertifikat.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                "*Format file yang didukung: JPEG, PNG, JPG, GIF, WEBP, PDF, DOC, DOCX (maks 10MB).",
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
              SizedBox(height: 15),
              Text(
                "B. Mengedit Sertifikat",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah langkah-langkah untuk mengedit sertifikat:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Temukan sertifikat yang ingin diedit pada tab Sertifikat di profil Anda.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.Klik ikon pensil (✏️) pada card sertifikat yang ingin diedit.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.Modal edit akan terbuka dengan data yang sudah terisi.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.Ubah judul, deskripsi, atau ganti file jika diperlukan.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '5.Klik tombol Update untuk menyimpan perubahan.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                "*Format file yang didukung: JPEG, PNG, JPG, GIF, WEBP, PDF, DOC, DOCX (maks 10MB).",
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
              SizedBox(height: 15),
              Text(
                "C. Melihat Sertifikat",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah cara melihat sertifikat berdasarkan jenis file:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "File Gambar (JPG, PNG, GIF, WEBP):",
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "-Klik pada gambar sertifikat untuk melihat preview dalam ukuran penuh",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Modal preview akan terbuka dengan gambar yang dapat di-zoom",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Klik tombol close atau area gelap di luar gambar untuk menutup preview",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'File PDF:',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '-Klik tombol "Preview PDF" untuk melihat PDF dalam modal preview',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Modal akan menampilkan PDF viewer dengan fitur download",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Gunakan tombol download untuk menyimpan PDF ke perangkat Anda",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      'File Dokumen (DOC/DOCX): Klik tombol download untuk mengunduh file.',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    Text(
                      'Sertifikat Anda dapat dilihat oleh guru dan pengunjung profil publik Anda.',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "D. Menghapus Sertifikat",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah langkah-langkah untuk menghapus sertifikat:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Temukan sertifikat yang ingin dihapus pada tab Sertifikat.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.Klik ikon tempat sampah (🗑️) pada card sertifikat.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.Konfirmasi penghapusan akan muncul, baca peringatan dengan teliti.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.Klik tombol Ya, Hapus untuk menghapus sertifikat.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                "⚠️ Catatan Penting: Penghapusan sertifikat bersifat permanen dan tidak dapat dibatalkan. File sertifikat juga akan dihapus dari server.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "E. Tips Sertifikat yang Baik",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Untuk mengelola sertifikat dengan baik, perhatikan hal-hal berikut:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "- Gunakan nama sertifikat yang jelas dan spesifik",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- Sertakan nama lembaga/organisasi penerbit dalam judul atau deskripsi',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- Deskripsi dapat mengandung line break - gunakan untuk membuat poin-poin yang mudah dibaca',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- Gunakan resolusi gambar yang cukup agar teks terlihat jelas (minimal 1024px lebar)',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- Format PDF lebih profesional dan universal untuk dokumen sertifikat',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- Tambahkan deskripsi untuk menjelaskan skill atau pencapaian yang diperoleh',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- Pastikan file tidak melebihi batas ukuran 10MB',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "F. Troubleshooting",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Jika mengalami masalah saat mengelola sertifikat:",
                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Modal tidak terbuka: Pastikan JavaScript aktif di browser Anda, refresh halaman dan coba lagi",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "2.Error saat upload:",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "- Periksa ukuran file (maks 10MB)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "- Pastikan format file didukung (JPG, PNG, GIF, WEBP, PDF, DOC, DOCX)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "- Coba compress file jika terlalu besar",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "3.Preview tidak muncul: Pastikan file sertifikat valid dan tidak corrupt",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "4.PDF tidak bisa dibuka: Gunakan browser modern (Chrome, Firefox, Edge) untuk preview PDF",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "5.Deskripsi dengan enter bermasalah: Sistem sekarang mendukung line break, refresh browser jika masih ada masalah",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
