import 'package:flutter/material.dart';

class GimPage extends StatefulWidget {
  const GimPage({super.key});

  @override
  State<GimPage> createState() => _GimPageState();
}

class _GimPageState extends State<GimPage> {
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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    projectOpen = !projectOpen;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Catatan",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("Kompetensi dan materi pembelajaran"),
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
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(),
                              Text("KOPETENSI :"),
                              Text("GURU :"),
                              Text("TANGGAL :"),
                              Text("STATUS :"),
                              Text("CATATAN GURU :"),
                              Text("CATATAN SISWA :"),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              
          ]
          ),
        ),
      ),
    
    );
  }
}
