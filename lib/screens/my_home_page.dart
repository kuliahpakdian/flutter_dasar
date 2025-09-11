import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
final List<Map<String, String>> ulama = [
    {
      'nama': 'Imam Abu Hanifah',
      'info': 'Mazhab Hanafi',
    },
    {
      'nama': 'Imam Malik bin Anas',
      'info': 'Mazhab Maliki',
    },
    {
      'nama': 'Imam Asy-Syafi\'i',
      'info': 'Mazhab Syafi\'i',
    },
    {
      'nama': 'Imam Ahmad bin Hanbal',
      'info': 'Mazhab Hanbali',
    },
    // Kelompok Ulama Era Klasik
    {
      'nama': 'Syaikhul Islam Ibnu Taimiyah',
      'info': 'Ulama besar abad ke-7 H',
    },
    {
      'nama': 'Imam Ibnul Qayyim al-Jauziyyah',
      'info': 'Murid Ibnu Taimiyah',
    },
    {
      'nama': 'Imam Ibnu Katsir',
      'info': 'Ahli tafsir dan sejarawan',
    },
    {
      'nama': 'Imam Adz-Dzahabi',
      'info': 'Ahli hadits dan sejarawan',
    },

    {
      'nama': 'Syaikh Muhammad Nashiruddin al-Albani',
      'info': 'Ahli hadits abad ke-20',
    },
    {
      'nama': 'Syaikh Abdul Aziz bin Abdullah bin Baz',
      'info': 'Mufti Agung Arab Saudi (Mantan)',
    },
    {
      'nama': 'Syaikh Muhammad bin Shalih al-Utsaimin',
      'info': 'Anggota Dewan Ulama Senior Arab Saudi',
    },
     {
      'nama': 'Syaikh Shalih bin Fauzan al-Fauzan',
      'info': 'Anggota Dewan Ulama Senior Arab Saudi',
    },
    {
      'nama': 'Syaikh Abdurrazzaq bin Abdul Muhsin al-Badr',
      'info': 'Pengajar di Masjid Nabawi, Madinah',
    },
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
          return ListTile(
            leading: const Icon(Icons.book_rounded), 
            title: Text(ulama[index]['nama']!),      
            subtitle: Text(ulama[index]['info']!),     
            trailing: const Icon(Icons.more_vert),     
            onTap: () {
              debugPrint('Info lebih lanjut tentang: ${ulama[index]['nama']}');
            },
          );
        },
      ),
    );
  }
}
