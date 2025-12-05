import 'package:flutter/material.dart';

class PanduanPenggunaanPage extends StatelessWidget {
  const PanduanPenggunaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color Blue = Color.fromARGB(255, 21, 106, 192);
    Color cardIconColor = Blue;
    Widget buildPanduanItem({
      required String title,
      required String subtitle,
      required IconData icon,
    }) {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: cardIconColor, size: 30),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              subtitle,
              style: const TextStyle(color: Colors.black87, fontSize: 13),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 254, 255),
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
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            ListTile(
              leading: Icon(Icons.explore_outlined),
              title: Text("Explore"),
              onTap: () {
                Navigator.pushNamed(context, "/explore");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("Jurnal Pembisaan"),
              onTap: () {
                Navigator.pushNamed(context, "/jurnal-pembiasaan");
              },
            ),
            ListTile(
              leading: Icon(Icons.person_2),
              title: Text("Permintaan Saksi"),
              onTap: () {
                Navigator.pushNamed(context, "/permintaan-saksi");
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
              title: Text("Catatan Sikap"),
              onTap: () {
                Navigator.pushNamed(context, "/catatan-sikap");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.book_online),
              title: Text("Panduan Penggunaan"),
              onTap: () {
                Navigator.pushNamed(context, "/panduan-penggunaan");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_sharp),
              title: Text("Setting"),
              onTap: () {
                Navigator.pushNamed(context, "/settings");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.home, color: Colors.black, size: 22),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.menu_book,
                    color: Color.fromARGB(255, 8, 89, 156),
                    size: 35,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Panduan Penggunaan",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 89, 156),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Umum",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/unggah-profile");
                },
                child: buildPanduanItem(
                  title: "Unggah Profile",
                  subtitle: "Panduan untuk mengunggah profile pengguna",
                  icon: Icons.description_outlined,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/ganti-password");
                },
                child: buildPanduanItem(
                  title: "Ganti Password",
                  subtitle: "Panduan untuk mengganti password pengguna",
                  icon: Icons.description_outlined,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Untuk Siswa",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/mengisi-jurnal");
                },
                child: buildPanduanItem(
                  title: "Mengisi Jurnal",
                  subtitle: "Panduan untuk mengisi kegiatan sehari-hari",
                  icon: Icons.description_outlined,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/kelengkapan-profile");
                },
                child: buildPanduanItem(
                  title: "Kelengkapan Profile",
                  subtitle: "Panduan untuk melengkapi profile",
                  icon: Icons.description_outlined,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/mengelola-portfolio");
                },
                child: buildPanduanItem(
                  title: "Mengelola Portfolio",
                  subtitle: "Panduan untuk menambah, edit, dan hapus portfolio",
                  icon: Icons.description_outlined,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/mengelola-sertifikat");
                },
                child: buildPanduanItem(
                  title: "Mengelola Sertifikat",
                  subtitle:
                      "Panduan untuk menambah, edit, dan hapus sertifikat",
                  icon: Icons.description_outlined,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/catatan-sikap-saya");
                },
                child: buildPanduanItem(
                  title: "Catatan Sikap Saya",
                  subtitle: "Panduan untuk melihat dan memahami catatan sikap",
                  icon: Icons.description_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
