import 'package:flutter/material.dart';
// import 'package:flutter_application_1/tugas_mandiri.dart';
import 'package:flutter_application_1/layout_listitem.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter",
      home: LayoutListitem());
  }
}
