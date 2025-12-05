import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 9, 73, 126),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Kembali", style: TextStyle(color: Colors.white)),
                ),
              ),

              SizedBox(height: 15),
              Container(height: 1, color: Colors.grey),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/wikrama-mewah.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    left: 15,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 42,
                            backgroundImage: AssetImage(
                              "assets/images/profile.jpg",
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 14, 69, 163),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50),

              // ---------------- PROFILE NAME ----------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ibrahim Satria",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "12309677  | PPLG XII-3 | Taj 5",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 12, 90, 153),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.share, size: 16, color: Colors.white),
                      label: Text(
                        "Bagikan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // ---------------- TAB BAR ----------------
              TabBar(
                labelColor: Color.fromARGB(255, 11, 91, 156),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color.fromARGB(255, 11, 91, 156),
                tabs: [
                  Tab(text: "Overview"),
                  Tab(text: "Portofolio"),
                  Tab(text: "Sertifikat"),
                ],
              ),

              // ---------------- TAB CONTENT (SCROLLABLE) ----------------
              Container(
                height: 1200, // Agar konten panjang bisa discroll
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _overviewTab(),
                    Center(child: Text("Portofolio nanti di sini")),
                    Center(child: Text("Sertifikat nanti di sini")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------------- OVERVIEW TAB ----------------
  Widget _overviewTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---- Portfolio ----
          Text(
            "Portfolio Terbaru",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
            ),
            child: Column(
              children: [
                Icon(Icons.work_outline, color: Colors.brown, size: 42),
                SizedBox(height: 10),
                Text(
                  "Portfolio akan ditampilkan di sini",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          SizedBox(height: 35),

          // ---- Sertifikat ----
          Text(
            "Sertifikat Terbaru",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
            ),
            child: Column(
              children: [
                Icon(
                  Icons.emoji_events_outlined,
                  color: Colors.amber,
                  size: 42,
                ),
                SizedBox(height: 10),
                Text(
                  "Sertifikat akan ditampilkan di sini",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          SizedBox(height: 35),

          // -------- Dokumen Section --------
          Text(
            "Dokumen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 18),

          // -------- CV --------
          Text(
            "Curriculum Vitae",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text("Dokumen CV siswa", style: TextStyle(color: Colors.black54)),
          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0A4A88),
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () {},
                  child: Text("Lihat CV"),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,
                  padding: EdgeInsets.all(12),
                ),
                onPressed: () {},
                child: Icon(Icons.download, color: Colors.white),
              ),
            ],
          ),

          SizedBox(height: 28),

          // -------- Kartu Pelajar --------
          Text("Kartu Pelajar", style: TextStyle(fontWeight: FontWeight.w600)),
          Text(
            "Kartu identitas siswa",
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () {},
                  child: Text("Lihat Kartu Pelajar"),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,
                  padding: EdgeInsets.all(12),
                ),
                onPressed: () {},
                child: Icon(Icons.download, color: Colors.white),
              ),
            ],
          ),

          SizedBox(height: 5),
          Text(
            "Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
            style: TextStyle(color: Colors.orange, fontSize: 12),
          ),

          SizedBox(height: 35),

          // -------- Media Sosial --------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Media Sosial",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Icon(Icons.edit, size: 18),
            ],
          ),
          SizedBox(height: 12),

          Row(
            children: [
              Icon(Icons.link, size: 20, color: Colors.blue),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Icon(Icons.copy, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}
