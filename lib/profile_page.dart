import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 42, 123, 230),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            // 1. Gambar profil di atas tengah
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color.fromARGB(255, 42, 123, 230), width: 3),
                ),
                child: ClipOval(
                  child: Image.asset('images/foto-profile.gif', fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 20),
            // 2. Nama lengkap dan deskripsi singkat
            Column(
              children: [
                Text(
                  'Muhammad Azka Ramadhan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Pelajar SMK YPC Tasikmalaya',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CALL
                ElevatedButton.icon(
                  icon: Icon(Icons.call),
                  label: Text('CALL'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromARGB(255, 42, 123, 230),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    // tombol CALL
                  },
                ),
                SizedBox(width: 20),
                // ROUTE
                ElevatedButton.icon(
                  icon: Icon(Icons.map),
                  label: Text('ROUTE'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromARGB(255, 42, 123, 230),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    // tombol ROUTE
                  },
                ),
                SizedBox(width: 20),
                // SHARE
                ElevatedButton.icon(
                  icon: Icon(Icons.share),
                  label: Text('SHARE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 42, 123, 230),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    // tombol SHARE
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}