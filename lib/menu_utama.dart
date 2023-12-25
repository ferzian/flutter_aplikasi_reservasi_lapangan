import 'package:flutter/material.dart';
import 'daftar_lapangan.dart';
import 'daftar_pemesanan.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({Key? key}) : super(key: key);

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.amberAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'di',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'GOR 123',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Image(
                  image: AssetImage(
                    'images/olahraga2.jpg',
                  ),
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => daftarLapangan()));
                  },
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 55),
                      backgroundColor: Colors.amber),
                  child: Text('Daftar Lapangan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => daftarPemesanan()));
                  },
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 50),
                      backgroundColor: Colors.amber),
                  child: Text('Daftar Pemesanan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
