import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final List<String> ulama = [
    'Abu Hanifah',
    'Malik bin Anas',
    'Asy-Syafi\'i',
    'Ahmad bin Hanbal',
    'Ibnu Taimiyah',
    'Ibnul Qayyim al-Jauziyyah',
    'Ibnu Katsir',
    'Adz-Dzahabi',
    'Muhammad Nashiruddin al-Albani',
    'Abdul Aziz bin Abdullah bin Baz',
    'Muhammad bin Shalih al-Utsaimin',
    'Shalih bin Fauzan al-Fauzan',
    'Abdurrazaq bin Abdul Muhsin al Badr',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: ulama.length,
        separatorBuilder: (context,index)=>const Divider(),
        itemBuilder: (context,index){
          return Text(
            ulama[index],
            style: const TextStyle(fontSize: 30),
            );
        },
      ),
    );
  }
}
