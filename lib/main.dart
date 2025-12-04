import 'package:flutter/material.dart';
import 'package:jurnalku/catatansikap_page.dart';
import 'package:jurnalku/dashboard.dart';
import 'package:jurnalku/login_page.dart';
import 'package:jurnalku/catatan_page.dart';
import 'package:jurnalku/mengelolasertif_page.dart';
import 'package:jurnalku/mengisijurnal_page.dart';
import 'package:jurnalku/panduan_penggunaan.dart';
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
        "/catatan": (context) => CatatanPage(),
        "/settings": (context) => SettingsPage(),
        "/panduan-penggunaan": (context) => PanduanPenggunaanPage(),
        "/catatan-sikap-saya": (context) => CatatansikapPage(),
        "/mengisi-jurnal": (context) => MengisijurnalPage(),
      },
    );
  }
}
