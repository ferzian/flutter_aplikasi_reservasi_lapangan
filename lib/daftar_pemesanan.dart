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
        title: Text('SPORT CENTER', style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          pemesananList.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Tidak Ada Pesanan. \n\n Pesan Dulu Yuk!',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Daftar Pemesanan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
          Expanded(
            child: pemesananList.isEmpty
                ? SizedBox() 
                : ListView.builder(
                    itemCount: pemesananList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          pemesananList[index]['lapangan'],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight:
                                  FontWeight.bold), 
                        ),
                        subtitle: Text(
                          'Nama: ${pemesananList[index]['name']}\nNo. Telp: ${pemesananList[index]['noTelp']}\nDurasi: ${pemesananList[index]['durasi']} jam',
                          style: TextStyle(
                              fontSize: 20), 
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
