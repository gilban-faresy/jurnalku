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
                      "Dennis Dwi Musti",
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
                const SizedBox(width: 8),
                Icon(Icons.account_circle, color: Colors.black, size: 40),
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
