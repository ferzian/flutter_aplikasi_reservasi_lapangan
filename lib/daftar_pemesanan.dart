import 'package:flutter/material.dart';

class daftarPemesanan extends StatefulWidget {
  const daftarPemesanan({super.key});

  @override
  State<daftarPemesanan> createState() => _daftarPemesananState();
}

class _daftarPemesananState extends State<daftarPemesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GOR 123'),
      ),
    body: Center(
      child: Text('Daftar Pemesanan') 
      ),
    );
  }
}