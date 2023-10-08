import 'package:flutter/material.dart';

class BelajarGesturePage extends StatefulWidget {
  final String title;
  const BelajarGesturePage({super.key, required this.title});

  @override
  State<BelajarGesturePage> createState() => _BelajarGesturePageState();
}

class _BelajarGesturePageState extends State<BelajarGesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            debugPrint('Saya ditekan');
          },
          onPanUpdate: (details) {
            var ordx = details.delta.dx;
            var ordy = details.delta.dy;
            debugPrint("Saya didrag usap x = $ordx dan y = $ordy");
          },
          onDoubleTap: () => debugPrint('Saya ditekan dua kali'),
          onLongPress: () => debugPrint('Saya ditekan agak lama'),
          onTapDown: (a) => debugPrint('Saya Tekan ke bawah'),
          onTapUp: (a) => debugPrint('Saya Lepas dari tekanan'),
          child: Image.asset('assets/images/bunga.png'),
        ),
      ),
    );
  }
}
