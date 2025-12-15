import 'package:flutter/material.dart';
import 'package:jurnalku/Panduan_Pengguna/catatansikap_page.dart';
import 'package:jurnalku/Panduan_Pengguna/ganti_pasword_page.dart';
import 'package:jurnalku/Panduan_Pengguna/kelengkapan_profile_page.dart';
import 'package:jurnalku/Panduan_Pengguna/mengelola_portofolio.dart';
import 'package:jurnalku/Panduan_Pengguna/unggah_profile_page.dart';
import 'package:jurnalku/dashboard.dart';
import 'package:jurnalku/explore_page.dart';
import 'package:jurnalku/jurnal_page.dart';
import 'package:jurnalku/login_page.dart';
import 'package:jurnalku/catatan_page.dart';
import 'package:jurnalku/Panduan_Pengguna/mengelolasertif_page.dart';
import 'package:jurnalku/Panduan_Pengguna/mengisijurnal_page.dart';
import 'package:jurnalku/panduan_penggunaan.dart';
import 'package:jurnalku/permintaan_saksi_page.dart';
import 'package:jurnalku/profile_page.dart';
import 'package:jurnalku/progress%20belajar/gim_page.dart';
import 'package:jurnalku/progress%20belajar/mobile_apps.dart';
import 'package:jurnalku/progress%20belajar/project_work.dart';
import 'package:jurnalku/progress%20belajar/ukk_page.dart';
import 'package:jurnalku/progress_page.dart';
import 'package:jurnalku/settings_page.dart';

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
      // home: const LoginPage(),
      initialRoute: '/',
       routes: {
        "/": (context) =>  LoginPage(),
        "/dashboard": (context) => DashboardPage(),
        "/progress": (context) => ProgressPage(),
        "/catatan-sikap": (context) => CatatanPage(),
        "/settings": (context) => SettingsPage(),
        "/panduan-penggunaan": (context) => PanduanPenggunaanPage(),
        "/profile": (context) => ProfilePage(),
        "/explore": (context) => Explore(),
        "/jurnal-pembiasaan": (context) => JurnalPage(),
        "/permintaan-saksi": (context) => PermintaanSaksiPage(),
        
        // detail dari panduan penggunaan
        "/catatan-sikap-saya": (context) => CatatansikapPage(),
        "/mengisi-jurnal": (context) => MengisijurnalPage(),
        "/mengelola-sertifikat": (context) => MengelolasertifPage(),
        "/mengelola-portofolio": (context) => MengelolaPortofolioPage(),
        "/kelengkapan-profile": (context) => KelengkapanProfilePage(),
        "/ganti-password": (context) => GantiPaswordPage(),
        "/unggah-profile": (context) => UnggahprofilePage(),

        // detail dari panduan penggunaan
        "/project-work": (context) => ProjectWork(),
        "/mobile-apps": (context) => MobileApps(),
        "/ukk-page": (context) => UkkPage(),
        "/gim-page": (context) => GimPage(),
        
      },
    );
  }
}
