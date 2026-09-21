import 'package:flutter/material.dart';

class PanelLaporanWarga extends StatefulWidget {
  const PanelLaporanWarga({super.key});

  @override
  State<PanelLaporanWarga> createState() => _PanelLaporanWargaState();
}

class _PanelLaporanWargaState extends State<PanelLaporanWarga> {
  int _jumlahLaporan = 0;

  void _laporanMasuk() {
    setState(() {
      _jumlahLaporan++;
    });
  }

  void _laporanSelesai() {
    setState(() {
      if (_jumlahLaporan > 0) {
        _jumlahLaporan--;
      }
    });
  }

  void _resetHarian() {
    setState(() {
      _jumlahLaporan = 0;
    });
  }

  String get _statusPelayanan {
    if (_jumlahLaporan < 5) {
      return 'Pelayanan Lancar';
    } else if (_jumlahLaporan <= 10) {
      return 'Pelayanan Sibuk';
    } else {
      return 'Perlu Penambahan Petugas';
    }
  }

  Color get _statusColor {
    if (_jumlahLaporan < 5) return Colors.green;
    if (_jumlahLaporan <= 10) return Colors.orange;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Panel Laporan Warga',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Jumlah Laporan Saat Ini: $_jumlahLaporan',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Status: $_statusPelayanan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: _statusColor,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _laporanMasuk,
                  icon: const Icon(Icons.add),
                  label: const Text('Laporan Masuk'),
                ),
                ElevatedButton.icon(
                  onPressed: _laporanSelesai,
                  icon: const Icon(Icons.check),
                  label: const Text('Laporan Selesai'),
                ),
                OutlinedButton.icon(
                  onPressed: _resetHarian,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset Harian'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}