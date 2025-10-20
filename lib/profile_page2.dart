import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 63,
              backgroundColor: Colors.blueAccent,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/foto-profile.gif'),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Muhammad Azka Ramadhan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            'Pelajar SMK YPC Tasikmalaya',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.call, color: Colors.red),
                label: Text('Call', style: TextStyle(color: Colors.red)),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.route),
                label: Text('Route'),
                onPressed: () {},
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.share),
                label: Text('Share'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
