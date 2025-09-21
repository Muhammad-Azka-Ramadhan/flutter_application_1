import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Layout Contoh",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.indigo
      ),
      body: Column(
        children: [
          Image.asset(
            'images/logo-smk.png',width: 200
          ),
          SizedBox(
            height: 10
          ),
          Text(
            'SMK YPC Tasikmalaya',
            style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold
            ),
          ),
        Text(
          'Pengembangan Perangkat Lunak dan Gim'
        ),
        SizedBox(
          height: 10
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [Icon(Icons.call), Text('call')]),
            Column(children: [Icon(Icons.map),Text('route')]),
            Column(children: [Icon(Icons.share),Text('share')])
          ],
        ),
        ],
      ),
    );
  }
}