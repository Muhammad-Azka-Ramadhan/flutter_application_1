import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman2.dart';
import 'package:flutter_application_1/halaman3.dart';

class Halaman1 extends StatelessWidget {
  const Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = "Muhammad Azka Ramadhan";
    final String alamat = "Leuwisari";
    return Scaffold(
      appBar: AppBar(title: Text("Halaman 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Halaman2(nama: nama, alamat: alamat,)),
                );
              },
              child: Text("Pergi ke Halaman kedua"),
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
