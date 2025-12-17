import 'package:flutter/material.dart';

class PermintaanSaksiPage extends StatefulWidget {
  const PermintaanSaksiPage({super.key});

  @override
  State<PermintaanSaksiPage> createState() => _PermintaanSaksiPageState();
}

class _PermintaanSaksiPageState extends State<PermintaanSaksiPage> {
  List<Map<String, String>> permintaanSaksi = [
    {
      "pengirim": "Muhammad Husni Mbarok",
      "tanggal": "3 Desember 2025",
      "konfirmasi": "Menunggu",
    },
    {
      "pengirim": "Muhammad Ikmal Gilban Fahresy",
      "tanggal": "3 Desember 2025",
      "konfirmasi": "Menunggu",
    },
  ];

  void setujuiPermintaan(int index) {
    setState(() {
      permintaanSaksi[index]["konfirmasi"] = "Disetujui";
    });
  }

  void tidakDisetujui(int index) {
    setState(() {
      permintaanSaksi[index]["konfirmasi"] = "Ditolak";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Text(
                "Permintaan Saksi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              const SizedBox(height: 5),
              const Text(
                "Kelola permintaan menjadi saksi dari siswa lain",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Thursday, 4 December 2025",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 99, 180),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Column(
                children: List.generate(permintaanSaksi.length, (index) {
                  final data = permintaanSaksi[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    elevation: 2,
                    surfaceTintColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide.none,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        data["pengirim"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("Klik untuk detail permintaan"),
                      childrenPadding: const EdgeInsets.all(12),
                      children: [
                        dataTile("PENGIRIM", data["pengirim"]!),
                        dataTile("TANGGAL", data["tanggal"]!),
                        dataTile(
                          "KONFIRMASI",
                          data["konfirmasi"]!,
                          warna: data["konfirmasi"] == "Menunggu"
                              ? Colors.orange
                              : data["konfirmasi"] == "Disetujui"
                              ? Colors.green
                              : Colors.red,
                        ),
                        const SizedBox(height: 12),
                        if (data["konfirmasi"] == "Menunggu")
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => setujuiPermintaan(index),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  child: const Text(
                                    "SETUJUI",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => tidakDisetujui(index),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: const Text(
                                    "TIDAK DISETUJUI",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dataTile(String title, String value, {Color warna = Colors.black}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      children: [
        SizedBox(width: 110, child: Text(title)),
        Expanded(
          child: Text(value, style: TextStyle(color: warna)),
        ),
      ],
    ),
  );
}
