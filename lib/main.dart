import 'package:flutter/material.dart';
import 'package:flutter_dasar/ui/belajar_checkbox_page.dart';
import 'package:flutter_dasar/ui/belajar_dropdown_page.dart';
import 'package:flutter_dasar/ui/belajar_listener_page.dart';
import 'package:flutter_dasar/ui/belajar_radio_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dasar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BelajarDropdownPage(title: 'Belajar Dropdown'),
    );
  }
}
