import 'package:flutter/material.dart';
import 'ui/belajar_gesture_page.dart';

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
      home: const BelajarGesturePage(title: 'Belajar Gesture'),
    );
  }
}
