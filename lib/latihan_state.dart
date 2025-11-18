import 'package:flutter/material.dart';

class LatihanState extends StatefulWidget {
  const LatihanState({super.key});

  @override
  State<LatihanState> createState() => _LatihanStateState();
}

class _LatihanStateState extends State<LatihanState> {
  int counter = 0;

  void incrementcounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan State")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nilai counter saat ini : $counter"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: incrementcounter,
              child: const Text(
                "Tambah Counter",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
