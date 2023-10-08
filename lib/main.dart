import 'package:flutter/material.dart';
import 'package:flutter_dasar/ui/with_data_page.dart';
import 'ui/second_page.dart';
import 'ui/my_home_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Halaman Depan'),
        '/second': (context) => const SecondPage(title: 'Halaman Kedua'),
        '/withdata': (context) => const WithDataPage(title: 'Dengan Data')
      },
    );
  }
}
