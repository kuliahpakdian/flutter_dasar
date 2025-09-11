import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final List<String> mahasiswa = [
    'SI A',
    'SI B',
    'SI C',
    'SI D',
    'SI E',
    'SI F',
    'SI G',
    'SI I',
    'SI J',
    'SI K',
    'SI L',
    'SI M',
    'SI N',
    'SI O',
    'SI P',
    'SI Q',
    'SI R',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: mahasiswa.length,
        itemBuilder: (context,index){
          return Text(
            '${mahasiswa[index]}',
            style: TextStyle(fontSize: 30),
            );
        },
      ),
    );
  }
}
