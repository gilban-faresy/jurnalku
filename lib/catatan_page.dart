import 'package:flutter/material.dart';

class CatatanPage extends StatefulWidget {
  const CatatanPage({super.key});

  @override
  State<CatatanPage> createState() => _CatatanPageState();
}

class _CatatanPageState extends State<CatatanPage> {
  bool projectOpen = false;
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
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Catatan Sikap Saya",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              // Card Peringatan
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                // height: 100,
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.yellow.shade200),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.orange.shade700,
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Perhatian",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.orange.shade900,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan klarifikasi.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Card Catatan 1
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Catatan", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.article_rounded,
                        color: Colors.blue.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Card Catatan 2
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Catatan Perbaikan",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.bolt_outlined,
                        color: Colors.yellow.shade500,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              // Card Catatan 3
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Catatan Perubahan",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.article_rounded,
                        color: Colors.green.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Laporan catatan
              GestureDetector(
                onTap: () {
                  setState(() {
                    projectOpen = !projectOpen;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ===== HEADER =====
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Catatan Sikap",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Detail catatan yang dilaporkan",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Icon(
                            projectOpen
                                ? Icons.expand_less
                                : Icons.expand_more,
                          ),
                        ],
                      ),

                      if (projectOpen)
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Divider(),

                              Text("No : -"),
                              SizedBox(height: 6),

                              Text("Kategori : -"),
                              SizedBox(height: 6),

                              Text("Catatan : -"),
                              SizedBox(height: 6),

                              Text("Status : -"),
                              SizedBox(height: 6),

                              Text("Dilaporkan : -"),
                              SizedBox(height: 6),

                              Text("Update Terakhir : -"),
                              SizedBox(height: 6),

                              Text("Aksi : -"),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
