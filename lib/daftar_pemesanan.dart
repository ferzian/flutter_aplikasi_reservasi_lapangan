import 'package:aplikasi_reservasi_lapangan_olahraga/isi_data.dart';
import 'package:flutter/material.dart';

class DaftarPemesanan extends StatefulWidget {
  const DaftarPemesanan({super.key});

  @override
  State<DaftarPemesanan> createState() => _DaftarPemesananState();
}

class _DaftarPemesananState extends State<DaftarPemesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('GOR 123', style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: ListView.builder(
        itemCount: pemesananList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pemesananList[index]['lapangan']),
            subtitle: Text(
                'Nama: ${pemesananList[index]['name']}\nNo. Telp: ${pemesananList[index]['noTelp']}\nDurasi: ${pemesananList[index]['durasi']} jam'),
          );
        },
      ),
    );
  }
}
