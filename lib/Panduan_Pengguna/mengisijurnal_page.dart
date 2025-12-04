import 'package:flutter/material.dart';

class MengisijurnalPage extends StatelessWidget {
  const MengisijurnalPage({super.key});

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
                    "Mengisi Jurnal",
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
                "Panduan ini memberikan langkah-langkah rinci bagi siswa untuk mengisi jurnal harian, mengelola pekerjaan, mempelajari materi, dan mengelola poin yang diperoleh berdasarkan aktivitas yang dilakukan.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 15),
              Text(
                "A. Mengisi Jurnal harian",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Jurnal adalah catatan harian yang berisi kegiatan yang dilakukan oleh siswa. Jurnal ini dapat diisi oleh siswa setiap hari. Berikut langkah-langkah mengisi jurnal:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Pilih menu Jurnal Pembiasaan pada sidebar.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "2. Bagian (A) adalah tabel untuk mengisi jurnal. Sesuaikan tanggal kegiatan, kemudian isi kegiatan yang dilakukan pada hari tersebut. kemudian klik tombol Simpan yang akan muncul ketika selesai mengisi kegiatan untuk menyimpan jurnal yang telah diisi.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "   *Jurnal yang sudah berlalu tidak dapat diedit.",
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah langkah-langkah untuk mengelola pekerjaan yang dilakukan:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Temukan Bagian ini pada halaman Jurnal Pembiasaan atau Klik disini",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.Klik tombol + Tambah Pekerjaan untuk menambahkan pekerjaan baru.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.Isi form yang muncul dengan detail pekerjaan, tanggal, dan saksi.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.Klik tombol Simpan untuk menyimpan pekerjaan.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '5.Untuk mengedit atau menghapus pekerjaan, klik tombol Edit atau Delete pada pekerjaan yang diinginkan.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Text(
                "C. Materi yang dipelajari",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah langkah-langkah untuk mengelola materi yang dipelajari:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Temukan Bagian ini pada halaman Jurnal Pembiasaan atau Klik disini",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.Klik tombol + Tambah Materi untuk menambahkan materi baru.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.Isi form yang muncul dengan detail materi, status, tanggal, dan catatan yang ingin disampaikan ke guru.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.Klik tombol Simpan untuk menyimpan materi.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Text(
                "D. Poin",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 0, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Berikut adalah langkah-langkah untuk mengelola poin:",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.Temukan Bagian ini pada halaman Jurnal Pembiasaan atau Klik disini",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.Lihat kategori poin dan jumlah poin yang telah diperoleh.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.Poin ceklist pembiasaan akan ditampilkan secara otomatis berdasarkan aktivitas yang telah dilakukan.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.Jumlah keseluruhan poin akan ditampilkan di bagian bawah tabel poin.',
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
