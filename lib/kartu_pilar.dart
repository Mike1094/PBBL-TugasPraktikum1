import 'package:flutter/material.dart';

class KartuPilar extends StatelessWidget {
  final String namaPilar;
  final IconData ikon;
  final String deskripsi;

  const KartuPilar({
    super.key,
    required this.namaPilar,
    required this.ikon,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.teal.withOpacity(0.2),
          child: Icon(ikon, color: Colors.teal),
        ),
        title: Text(namaPilar, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(deskripsi),
      ),
    );
  }
}