import 'package:flutter/material.dart';
import 'package:jurnalku/Panduan_Pengguna/ganti_pasword_page.dart';
import 'package:jurnalku/Panduan_Pengguna/kelengkapan_profile_page.dart';
import 'package:jurnalku/Panduan_Pengguna/mengelola_portofolio.dart';
import 'package:jurnalku/Panduan_Pengguna/unggah_profile_page.dart';
import 'package:jurnalku/catatan_page.dart';
// import 'package:jurnalku/dashboard.dart';
import 'package:jurnalku/login_page.dart';
// import 'package:jurnalku/catatan_page.dart';
// import 'package:jurnalku/progress_page.dart';

// import 'package:jurnalku/settings_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CatatanPage(),
    );
  }
}
