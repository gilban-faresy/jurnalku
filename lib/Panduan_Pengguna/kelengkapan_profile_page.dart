import 'package:flutter/material.dart';

class KelengkapanProfilePage extends StatefulWidget {
  const KelengkapanProfilePage({super.key});

  @override
  State<KelengkapanProfilePage> createState() => _KelengkapanProfilePageState();
}

class _KelengkapanProfilePageState extends State<KelengkapanProfilePage> {
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
            Row(
              children: [
                Icon(Icons.arrow_circle_left_outlined,
                    size: 20, color: Color.fromARGB(255, 0, 86, 157)),
                SizedBox(width: 5),
                Text(
                  "Kembali ke Panduan Penggunaan",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 86, 157)),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.menu_book_outlined,
                    color: Color.fromARGB(255, 0, 86, 157)),
                SizedBox(width: 10),
                Text(
                  "Panduan\nPenggunaan",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 86, 157),
                  ),
                ),
                SizedBox(width: 60),
                Text(
                  "Kelengkapan\nProfile",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 9, 106, 186),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Panduan lengkap untuk melengkapi profil siswa dengan mengunggah dokumen penting dan menambahkan informasi media sosial.",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 20),
            Text(
              "Untuk melengkapi profil Anda, klik nama/foto profil Anda di bagian atas halaman untuk membuka halaman profil.",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 20),
            Text(
              "A. Mengunggah Dokumen",
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 0, 92, 167),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(text: "Di halaman profil Anda, scroll ke bawah hingga menemukan bagian "),
                  TextSpan(
                    text: "“Dokumen”",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "1. Upload CV (Curriculum Vitae)",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(text: "• Klik tombol "),
                        TextSpan(
                          text: "\"Upload CV\"",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: " pada bagian Curriculum Vitae"),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB)",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• File akan otomatis terupload setelah dipilih",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "2. Upload Kartu Pelajar",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(text: "• Klik tombol "),
                        TextSpan(
                          text: "\"Upload Kartu Pelajar\"",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: " pada bagian Kartu Pelajar"),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• Pilih foto/scan kartu pelajar Anda (format: PDF, JPG, PNG, maksimal 2MB)",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• File akan otomatis terupload setelah dipilih",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "*Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text(
              "B. Mengelola Media Sosial",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 92, 167),
              ),
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 18, height: 1.5),
                children: [
                  TextSpan(text: "Di bagian "),
                  TextSpan(
                    text: "\"Media Sosial\"",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: " pada halaman profil Anda:"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(text: "1. Klik tombol "),
                        TextSpan(
                          text: "\"Edit\"",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: " di pojok kanan atas bagian Media Sosial"),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "2. Modal \"Edit Media Sosial\" akan terbuka",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "3. Isi informasi media sosial:",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "• Nama Platform: Masukkan nama platform (Instagram, LinkedIn, GitHub, dll.)",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "• URL: Masukkan link lengkap profil media sosial Anda",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "4. Untuk menambah platform lain, klik \"Tambah Media Sosial\"",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "5. Klik \"Simpan Perubahan\" untuk menyimpan",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text(
              "C. Tips Penting",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 92, 167),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Pastikan file yang diupload tidak melebihi batas ukuran maksimal",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• Gunakan URL lengkap untuk media sosial (dimulai dengan https://)",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• Profil yang lengkap akan membantu guru dan teman-teman mengenal Anda lebih baik",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• Periksa kembali informasi yang dimasukkan sebelum menyimpan",
                    style: TextStyle(fontSize: 18, height: 1.5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
