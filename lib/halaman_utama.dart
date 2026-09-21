import 'package:flutter/material.dart';
import 'kepala_kota.dart';
import 'kartu_pilar.dart';
import 'panel_laporan.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nusantara Cerdas', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            KepalaKota(),
            SizedBox(height: 24.0),
            PanelLaporanWarga(),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enam Pilar Smart City',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12.0),
            KartuPilar(
              namaPilar: 'Smart Governance',
              ikon: Icons.account_balance,
              deskripsi: 'Tata kelola pemerintahan yang transparan dan melayani.',
            ),
            KartuPilar(
              namaPilar: 'Smart Economy',
              ikon: Icons.trending_up,
              deskripsi: 'Pertumbuhan ekonomi melalui inovasi dan teknologi.',
            ),
            KartuPilar(
              namaPilar: 'Smart Living',
              ikon: Icons.home,
              deskripsi: 'Kualitas hidup yang baik dengan fasilitas publik memadai.',
            ),
            KartuPilar(
              namaPilar: 'Smart Mobility',
              ikon: Icons.directions_bus,
              deskripsi: 'Sistem transportasi cerdas dan terintegrasi.',
            ),
            KartuPilar(
              namaPilar: 'Smart Environment',
              ikon: Icons.eco,
              deskripsi: 'Pengelolaan lingkungan yang berkelanjutan.',
            ),
            KartuPilar(
              namaPilar: 'Smart People',
              ikon: Icons.people,
              deskripsi: 'SDM yang kreatif, inovatif, dan berdaya saing.',
            ),
          ],
        ),
      ),
    );
  }
}