import 'package:aplikasi_reservasi_lapangan_olahraga/daftar_pemesanan.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> pemesananList = [];

void savePemesanan(String name, String noTelp, int durasi, String lapangan) {
 pemesananList.add({'name': name, 'noTelp': noTelp, 'durasi': durasi, 'lapangan': lapangan});
}

class IsiData extends StatefulWidget {
 final String namaLapangan;

 const IsiData({Key? key, required this.namaLapangan});

 @override
 State<IsiData> createState() => _IsiDataState();
}

class _IsiDataState extends State<IsiData> {
 final _formKey = GlobalKey<FormState>();
 String _lapangan = '';
 String _name = '';
 String _noTelp = '';
 int _durasi = 0;

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('GOR 123', style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Pemesanan untuk ${widget.namaLapangan}',
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontSize: 24.0,
                 fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama Lapangan'),
                onChanged: (value) {
                 setState(() {
                    _lapangan = value;
                 });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama Lengkap'),
                onChanged: (value) {
                 setState(() {
                    _name = value;
                 });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'No. Telpon'),
                onChanged: (value) {
                 setState(() {
                    _noTelp = value;
                 });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Durasi /Jam'),
                onChanged: (value) {
                 setState(() {
                    _durasi = int.parse(value);
                 });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                 savePemesanan(_name, _noTelp, _durasi, _lapangan);
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaftarPemesanan()),
                 );
                },
                child: Text('Pesan'),
              ),
            ],
          ),
        ),
      ),
    );
 }
}
