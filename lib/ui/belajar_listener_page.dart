import 'package:flutter/material.dart';

class BelajarListenerPage extends StatefulWidget {
  final String title;
  const BelajarListenerPage({super.key, required this.title});

  @override
  State<BelajarListenerPage> createState() => _BelajarListenerPageState();
}

class _BelajarListenerPageState extends State<BelajarListenerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Listener(
          onPointerDown: (event) => debugPrint("Ditekan ke bawah $event"),
          onPointerUp: (event) => debugPrint("Diangkat tekanannya $event"),
          onPointerPanZoomUpdate: (event) =>
              debugPrint("Bunga diusap pada ordinat $event"),
          child: Image.asset('assets/images/bunga.png'),
        ),
      ),
    );
  }
}
