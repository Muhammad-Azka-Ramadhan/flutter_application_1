import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman3.dart';

class Halaman2 extends StatelessWidget {
  final String nama;
  final String alamat;
  const Halaman2({super.key, required this.nama, required this.alamat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama: $nama"),
            SizedBox(height: 10),
            Text("Alamat: $alamat"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali ke Halaman sebelumnya"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Halaman3()),
                );
              },
              child: Text("Pergi ke Halaman ketiga"),
            ),
          ],
        ),
      ),
    );
  }
}
