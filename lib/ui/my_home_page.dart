import 'package:flutter/material.dart';
import 'package:flutter_dasar/models/screen_arguments.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman Depan'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Menuju Halaman Kedua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/withdata',
                  arguments: ScreenArguments(
                      'Judul dari home', 'isi Pesan dari halaman home'),
                );
              },
              child: const Text('Menuju Halaman dgn Data'),
            ),
          ],
        ),
      ),
    );
  }
}
