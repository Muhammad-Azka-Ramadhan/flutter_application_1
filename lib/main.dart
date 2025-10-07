import 'package:flutter/material.dart';
// import 'package:flutter_application_1/tugas_mandiri.dart';
// import 'package:flutter_application_1/layout_listitem.dart';
// import 'package:flutter_application_1/profile_page.dart';
// import 'package:flutter_application_1/layout_gridview.dart';
// import 'package:flutter_application_1/layout_listview.dart';
// import 'package:flutter_application_1/layout_horizontal.dart';
// import 'package:flutter_application_1/layout_widget.dart';
import 'package:flutter_application_1/profile_page2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aplikasi Flutter",
    home: ProfilePage2());
  }
}
