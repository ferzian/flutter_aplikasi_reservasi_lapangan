import 'package:flutter/material.dart';

class isiData extends StatefulWidget {
  const isiData({super.key});

  @override
  State<isiData> createState() => _isiDataState();
}

class _isiDataState extends State<isiData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GOR 123'),
      ),
      body: Center(
        child: Text('Isi Data Anda'),
      )
    );
  }
}