import 'package:aplikasi_reservasi_lapangan_olahraga/menu_utama.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ReservasiLapangan());
}

class ReservasiLapangan extends StatelessWidget {
  const ReservasiLapangan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menuUtama(),
    );
  }
}
