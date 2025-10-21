import 'package:flutter/material.dart';

class ProfileLatihan extends StatelessWidget {
  const ProfileLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Latihan',
          style: TextStyle(fontSize: 24,),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 73,
              backgroundColor: Colors.greenAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  'images/foto-profile.gif'
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Muhammad Azka Ramadhan',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Pelajar SMK YPC Tasikmalaya',
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  'Call',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.green,
                  )
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {}, 
                label: Text(
                  'share',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.green
                  )
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {}, label: Text(
                  'School',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                icon: Icon(
                  Icons.school,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.green
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}