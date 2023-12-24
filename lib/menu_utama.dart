import 'package:aplikasi_reservasi_lapangan_olahraga/daftar_lapangan.dart';
import 'package:aplikasi_reservasi_lapangan_olahraga/daftar_pemesanan.dart';
import 'package:flutter/material.dart';

class menuUtama extends StatefulWidget {
  const menuUtama({super.key});

  @override
  State<menuUtama> createState() => _menuUtamaState();
}

class _menuUtamaState extends State<menuUtama> {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => daftarLapangan()));
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 40), // Button text size
                  ),
                  child: Text('Daftar Lapangan'),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => daftarPemesanan()));
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 40), // Button text size
                  ),
                  child: Text('Daftar Pemesanan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}