import 'package:flutter/material.dart';

class CatatansikapPage extends StatelessWidget {
  const CatatansikapPage({super.key});

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
                    "Catatan Sikap Saya",
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
                "Panduan untuk melihat dan memahami catatan sikap yang telah dilaporkan oleh guru.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 15),
              Text(
                "A. Mengakses Catatan Sikap",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Untuk melihat catatan sikap :",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Login ke sistem menggunakan akun siswa Anda.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "2. Buka menu Catatan Sikap Saya dari sidebar atau dashboard.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "3. Halaman akan menampilkan semua catatan sikap yang pernah dilaporkan untuk Anda.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "B. memahami Statistik Dashboard",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Di bagian atas halaman, terdapat 3 card statistik:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Total Catatan: Jumlah total catatan sikap yang pernah dilaporkan untuk Anda",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2. Dalam Perbaikan: Catatan dengan status "Belum Ada Perubahan" atau "Mulai Ada Perubahan" (ditandai warna kuning)',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3. Sudah Berubah: Catatan dengan status "Sudah Berubah" - menunjukkan Anda telah berhasil memperbaiki sikap (ditandai warna hijau)',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.check_box, color: Colors.green),
                  Expanded(
                    child: Text(
                      'Target: Usahakan semua catatan mencapai status "Sudah Berubah" dengan terus memperbaiki diri.',
                      style: TextStyle(fontSize: 14, color: Colors.green),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Text(
                "C. Membaca Tabel Catatan",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Tabel catatan menampilkan informasi berikut:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "No: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Nomor urut catatan",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Kategori: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Jenis catatan (Perbuatan, Sifat, atau Pembelajaran)",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Perbuatan ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "- Tindakan atau perilaku yang dilakukan",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Sifat",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                "- Karakter atau attitude",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Pembelajaran",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "- Terkait proses belajar",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Catatan: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Deskripsi detail temuan sikap/perilaku",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Status: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Status perkembangan perubahan Anda",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Belum Ada Perubahan ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "- Perlu segera diperbaiki",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Mulai Ada Perubahan ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              Text(
                                "- Sudah ada perbaikan, pertahankan!",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Sudah Berubah ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "- Berhasil berubah positif",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Dilaporkan: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Tanggal dan waktu catatan pertama kali dibuat",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Update Terakhir: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Tanggal dan waktu terakhir status diupdate oleh guru",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Text(
                "D. Melihat Riwayat Perubahan",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Untuk melihat detail perkembangan perubahan sikap Anda:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Pada tabel, klik ikon jam (🕐) di kolom Aksi pada catatan yang ingin dilihat.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2. Modal riwayat akan terbuka menampilkan timeline perubahan dengan:',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
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
                            "-Badge Status: Menunjukkan status dengan warna (merah/kuning/hijau)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            '-Waktu Update: Kapan update dilakukan (misal: "2 hari yang lalu")',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Nama Guru/Updater: Siapa yang melakukan evaluasi perubahan",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "-Deskripsi: Catatan detail tentang perkembangan Anda",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '3. Timeline ditampilkan dari yang terbaru ke yang terlama dengan garis penghubung visual.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                '💡 Gunakan riwayat ini untuk memahami perkembangan Anda dan area yang masih perlu diperbaiki.',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),

              SizedBox(height: 15),
              Text(
                "E. Menanggapi Catatan Sikap",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Yang harus Anda lakukan setelah menerima catatan sikap:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Baca dengan Seksama: Pahami catatan yang diberikan oleh guru",
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.Refleksi Diri: Renungkan perilaku Anda dan akui jika ada kesalahan',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.Buat Rencana Perbaikan: Tentukan langkah konkret untuk memperbaiki diri',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.Konsultasi: Jika perlu, konsultasi dengan guru BK atau wali kelas',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '5.Tindak Lanjut: Terapkan perubahan positif dalam keseharian',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '6.Pantau Perkembangan: Cek berkala status catatan Anda',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '7.Pertahankan: Jaga konsistensi perilaku positif',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "F. Tips Perbaikan Diri",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Cara efektif untuk memperbaiki sikap dan perilaku:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "-Jujur pada Diri Sendiri: Akui kesalahan sebagai langkah awal perbaikan",
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '-Minta Maaf: Jika ada pihak yang dirugikan, minta maaf dengan tulus',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '-Konsisten: Terapkan perubahan positif secara konsisten, bukan hanya sementara',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '-Cari Dukungan: Minta bantuan teman, guru, atau orang tua untuk mendukung perubahan Anda',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '-Evaluasi Berkala: Lihat perkembangan Anda melalui riwayat update status',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '-Jangan Menyerah: Perubahan membutuhkan waktu, tetap semangat!',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "G. Memahami Kategori Catatan",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Penjelasan detail setiap kategori catatan:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Perbuatan (Merah):",
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
                            "Tindakan atau perilaku fisik yang dilakukan  ",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Contoh: berkelahi, merusak fasilitas, membolos, dll",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Biasanya memerlukan perhatian segera",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Sifat (Orange):',
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
                            "Karakter, sikap, atau attitude yang ditunjukkan  ",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Contoh: tidak sopan, tidak disiplin, egois, dll",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Perlu perbaikan karakter jangka panjang",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      'Pembelajaran (Biru):',
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
                            "Terkait dengan proses dan sikap belajar",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Contoh: malas mengerjakan tugas, mengganggu kelas, tidak fokus, dll",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Berdampak pada prestasi akademik H. Hak dan Kewajiban",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "H. Hak dan Kewajiban",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Yang perlu Anda ketahui:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hak Anda:",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
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
                            "Melihat semua catatan sikap yang dilaporkan untuk Anda",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Mengetahui perkembangan perubahan melalui riwayat update",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Mendapat evaluasi yang objektif dan adil",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Berkonsultasi dengan guru terkait catatan yang diterima",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Kewajiban Anda:",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
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
                            "Membaca dan memahami setiap catatan yang diberikan",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Melakukan introspeksi dan perbaikan diri",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Menghormati evaluasi guru",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Tidak mengulangi kesalahan yang sama",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            "Menunjukkan perubahan positif yang konsisten",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '💡 Gunakan riwayat ini untuk memahami perkembangan Anda dan area yang masih perlu diperbaiki.',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              SizedBox(height: 15),
              Text(
                "I. FAQ (Pertanyaan Umum)",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Q: Apakah orang tua bisa melihat catatan sikap saya?",
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "A: Ya, sistem ini dirancang transparan agar orang tua juga dapat memantau perkembangan sikap anak melalui rapor atau laporan berkala.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Text(
                'Q: Berapa lama waktu yang dibutuhkan untuk mengubah status dari "Belum Ada Perubahan" ke "Sudah Berubah"?',
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "A: Tidak ada waktu pasti. Tergantung konsistensi perubahan positif yang Anda tunjukkan. Guru akan mengupdate status saat melihat perkembangan nyata.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Text(
                "Q: Apa yang harus dilakukan jika saya merasa catatan tidak adil?",
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "A: Konsultasikan dengan guru yang membuat catatan atau wali kelas Anda secara langsung dengan sikap terbuka dan tidak defensif.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Text(
                "Q: Apakah catatan sikap mempengaruhi nilai rapor?",
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "A: Ya, catatan sikap biasanya berpengaruh pada nilai sikap/kepribadian di rapor. Semakin baik sikap Anda, semakin baik nilai sikap Anda.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
