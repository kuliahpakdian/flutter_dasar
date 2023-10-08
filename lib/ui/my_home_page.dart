import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final namaController = TextEditingController();
  String nama = '';

  @override
  void dispose() {
    namaController.dispose();
    super.dispose();
  }

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  hintText: 'Masukkan Nama Anda',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nama = "Halo ${namaController.text}";
                });
              },
              child: const Text('Sapa'),
            ),
            Text(nama),
          ],
        ),
      ),
    );
  }
}
