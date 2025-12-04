import 'package:flutter/material.dart';

class JurnalPage extends StatelessWidget {
  const JurnalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.home, color: Colors.grey, size: 20),
        actions: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Ibrahim Satria Harimurti",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "PPLG XII-3",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/images/bahlul.jpg"),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Jurnal Pembiasaan",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Desember - 2025",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: const Text(
                  "⬅ Bulan Sebelumnya",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 40),

              _sectionTitle("A. Pembiasaan Harian"),
              _legendRow(),
              const SizedBox(height: 20),
              _calendarGrid(),

              const SizedBox(height: 30),
              const Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              _pekerjaanTable(),
              const SizedBox(height: 30),

              const Text(
                "C. Materi yang dipelajari",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              _materiTable(),
              const SizedBox(height: 15),

              Row(
                children: [
                  _legend(Colors.green, "A : Approved"),
                  const SizedBox(width: 12),
                  _legend(Colors.orange, "P : Pending"),
                  const SizedBox(width: 12),
                  _legend(Colors.red, "R : Revisi"),
                ],
              ),

              const SizedBox(height: 30),
              const Text(
                "D. Poin",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              _poinTable(),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  static Widget _legendRow() {
    return Row(
      children: [
        _legend(Colors.green, "Sudah Diisi"),
        const SizedBox(width: 15),
        _legend(Colors.grey, "Belum Diisi"),
        const SizedBox(width: 15),
        _legend(Colors.red, "Tidak Diisi"),
      ],
    );
  }

  static Widget _legend(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 6),
        Text(label),
      ],
    );
  }

  static Widget _calendarGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 31,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
      ),
      itemBuilder: (context, index) {
        int day = index + 1;

        String status = "";
        if (day == 1 || day == 2) {
          status = "tidak";
        } else if (day == 3 || day == 5 || day == 10) {
          status = "sudah";
        } else {
          status = "belum";
        }

        return _calendarBox(day, status);
      },
    );
  }

  static Widget _calendarBox(int day, String status) {
    Color bg;
    Widget? icon;

    if (status == "sudah") {
      bg = Colors.green.shade400;
      icon = null;
    } else if (status == "tidak") {
      bg = Colors.red.shade300;
      icon = const Icon(Icons.close, color: Colors.white, size: 18);
    } else {
      bg = Colors.grey.shade300;
      icon = null;
    }

    return Container(
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              day.toString().padLeft(2, '0'),
              style: TextStyle(
                color: status == "belum" ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (status == "tidak")
            Positioned(right: 4, top: 4, child: icon!),
        ],
      ),
    );
  }

  static Widget _pekerjaanTable() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            child: const Row(
              children: [
                Expanded(child: Center(child: Text("Pekerjaan"))),
                Expanded(child: Center(child: Text("Tgl"))),
                Expanded(child: Center(child: Text("Saksi"))),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(14),
            alignment: Alignment.centerLeft,
            child: Text(
              "Belum ada pekerjaan yang diinput",
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),

          const Divider(height: 0),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "+ Tambah Pekerjaan",
              style: TextStyle(color: Colors.blue.shade700),
            ),
          )
        ],
      ),
    );
  }

  static Widget _materiTable() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            child: const Row(
              children: [
                Expanded(child: Center(child: Text("Materi"))),
                Expanded(child: Center(child: Text("Sts"))),
                Expanded(child: Center(child: Text("Tgl"))),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(14),
            alignment: Alignment.centerLeft,
            child: Text(
              "Belum ada materi yang diinput",
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),

          const Divider(height: 0),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "+ Tambah Materi",
              style: TextStyle(color: Colors.blue.shade700),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _poinTable() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          // HEADER
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            child: const Row(
              children: [
                Expanded(child: Center(child: Text("Kategori Poin"))),
                Expanded(flex: 2, child: Center(child: Text("Jumlah Poin"))),
              ],
            ),
          ),

          // HEADER M1–M4
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Row(
              children: [
                Expanded(child: SizedBox()),
                Expanded(child: Center(child: Text("M1"))),
                Expanded(child: Center(child: Text("M2"))),
                Expanded(child: Center(child: Text("M3"))),
                Expanded(child: Center(child: Text("M4"))),
              ],
            ),
          ),

          const Divider(height: 0),

          _poinRow("(5) mengerjakan project/update progress belajar"),
          const Divider(height: 0),

          _poinRow("(1 - 5) poin dari pertanyaan atau laporan materi"),
          const Divider(height: 0),

          _poinRow("Jumlah poin minggu ini"),
          const Divider(height: 0),

          _poinRow("Jumlah poin ceklist"),
        ],
      ),
    );
  }

  static Widget _poinRow(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          Expanded(child: Center(child: Text("-"))),
          Expanded(child: Center(child: Text("-"))),
          Expanded(child: Center(child: Text("-"))),
          Expanded(child: Center(child: Text("-"))),
        ],
      ),
    );
  }
}
