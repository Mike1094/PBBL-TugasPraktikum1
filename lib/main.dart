import 'package:flutter/material.dart';

import 'halaman_utama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusantara Cerdas',
      debugShowCheckedModeBanner: false,

      // 1. Konfigurasi Tema Terang Material 3
      theme: ThemeData(
        colorSchemeSeed: Colors.deepOrangeAccent,
        useMaterial3: true,
        brightness: Brightness.light,
      ),

      // 2. Konfigurasi Tema Gelap Material 3
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.deepOrangeAccent,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),

      // 3. Otomatis mengikuti pengaturan sistem perangkat (Terang/Gelap)
      themeMode: ThemeMode.system,

      home: const HalamanUtama(),
    );
  }
}
