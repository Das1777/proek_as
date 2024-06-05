import 'package:flutter/material.dart';
import 'package:perpus/Page/Detail_page.dart';
import 'package:perpus/Page/Home_Page.dart';
import 'package:perpus/Page/Pengajuan_Page.dart';
import 'package:perpus/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "homepage": (context) => HomePage(),
        "detail" :(context) => DetailPage(),
        "pengajuan":(context) => PengajuanPage(),
      },
    );
  }
}
