import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  bool projectOpen = false;
  bool projectOpen2 = false;
  bool projectOpen3 = false;
  bool projectOpen4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Page"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress Belajar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Thursday, 20 November 2025",
                  style: TextStyle(fontSize: 12, color: Colors.blue.shade900),
                ),
              ),
              // cards progress
              SizedBox(height: 20),
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
                        Text("Total Pengajuan", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Semua Status",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
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
                        Icons.check_circle_outline_outlined,
                        color: Colors.blue.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
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
                        Text("Halaman Ini", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Data Ditampilkan",
                          style: TextStyle(fontSize: 12, color: Colors.green),
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
                        Icons.calendar_today_outlined,
                        color: Colors.green.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
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
                        Text("Status Pending", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Perlu Validasi",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.watch_later_outlined,
                        color: Colors.red.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
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
                        Text("Total Pending", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 5),
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Navigasi Tersedia",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purpleAccent,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.purple.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              // card project work 1
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
                                "Project Work",
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
                            projectOpen ? Icons.expand_less : Icons.expand_more,
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
              SizedBox(height: 15),
              // card project work 2
              GestureDetector(
                onTap: () {
                  setState(() {
                    projectOpen2 = !projectOpen2;
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
                                "Mobile Apps",
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
                            projectOpen2 ? Icons.expand_less : Icons.expand_more,
                          ),
                        ],
                      ),

                      if (projectOpen2)
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
              SizedBox(height: 15),
              // card project work 3
              GestureDetector(
                onTap: () {
                  setState(() {
                    projectOpen3 = !projectOpen3;
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
                                "UKK (Ujian Kopemtensi Keahlian)",
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
                            projectOpen3 ? Icons.expand_less : Icons.expand_more,
                          ),
                        ],
                      ),

                      if (projectOpen3)
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
              SizedBox(height: 15),
              // card project work 4
              GestureDetector(
                onTap: () {
                  setState(() {
                    projectOpen4 = !projectOpen4;
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
                                "GIM",
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
                            projectOpen4 ? Icons.expand_less : Icons.expand_more,
                          ),
                        ],
                      ),

                      if (projectOpen4)
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
            ],
          ),
        ),
      ),
    );
  }
}
