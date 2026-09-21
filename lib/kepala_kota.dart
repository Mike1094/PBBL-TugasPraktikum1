import 'package:flutter/material.dart';

class KepalaKota extends StatelessWidget {
  const KepalaKota({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.location_city, size: 80, color: Colors.teal),
        SizedBox(height: 8.0),
        Text(
          'Kota Nusantara Cerdas',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          'Membangun Masa Depan yang Lebih Baik',
          style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, color: Colors.grey),
        ),
      ],
    );
  }
}