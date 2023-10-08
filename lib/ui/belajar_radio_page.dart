import 'package:flutter/material.dart';

enum DosenSisfo { ilhamsyah, renny, dian, syahru, nurul, ibnur, ferdy }

class BelajarRadioPage extends StatefulWidget {
  final String title;
  const BelajarRadioPage({super.key, required this.title});

  @override
  State<BelajarRadioPage> createState() => _BelajarRadioPageState();
}

class _BelajarRadioPageState extends State<BelajarRadioPage> {
  DosenSisfo? _ds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Radio Button'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Renny Puspita Sari'),
            leading: Radio(
              value: DosenSisfo.renny,
              groupValue: _ds,
              onChanged: (DosenSisfo? value) {
                setState(() {
                  _ds = value;
                  debugPrint(_ds.toString());
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Ilhamsyah'),
            leading: Radio(
              value: DosenSisfo.ilhamsyah,
              groupValue: _ds,
              onChanged: (DosenSisfo? value) {
                setState(() {
                  _ds = value;
                  debugPrint(_ds.toString());
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
