import 'package:flutter/material.dart';

class BelajarDropdownPage extends StatefulWidget {
  final String title;
  const BelajarDropdownPage({super.key, required this.title});

  @override
  State<BelajarDropdownPage> createState() => _BelajarDropdownPageState();
}

class _BelajarDropdownPageState extends State<BelajarDropdownPage> {
  String dropdownValue = 'Sistem Informasi';
  final List<String> prodi = <String>[
    'Sistem Informasi',
    'Sistem Komputer',
    'Lainnya'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Checkbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Program Studi'),
            DropdownButton<String>(
              value: dropdownValue,
              items: prodi.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  debugPrint(dropdownValue);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
