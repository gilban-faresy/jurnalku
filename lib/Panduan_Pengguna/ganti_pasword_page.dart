import 'package:flutter/material.dart';

class GantiPaswordPage extends StatefulWidget {
  const GantiPaswordPage({super.key});

  @override
  State<GantiPaswordPage> createState() => _GantiPaswordPageState();
}

class _GantiPaswordPageState extends State<GantiPaswordPage> {
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
                const SizedBox(width: 8),
                const Icon(Icons.account_circle,
                    color: Colors.black, size: 40),
              ],
            ),
          ),
          const SizedBox(width: 5),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
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
                const Icon(
                  Icons.menu_book_outlined,
                  color: Color.fromARGB(255, 0, 86, 157),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Panduan\nPenggunaan",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 86, 157),
                  ),
                ),
                const SizedBox(width: 40),

                const Text(
                  "Ganti\nPassword",
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
              "Halaman ini memberikan panduan langkah demi langkah untuk mengganti password akun Anda. Ikuti instruksi yang diberikan untuk memastikan bahwa password baru Anda berhasil disimpan dan akun Anda tetap aman.",
              style: TextStyle(fontSize: 20, height: 1.5),
            ),
            SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. Klik pada bagian Pengaturan Akun,", style: TextStyle(fontSize: 15)),
                  SizedBox(height: 8),
                  Text("2. lalu isi field Unggah Photo Profile", style: TextStyle(fontSize: 15)),
                  SizedBox(height: 8),
                  Text("3. Jika sudah, lalu klik Simpan", style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}