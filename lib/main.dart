import 'package:flutter/material.dart';
import 'package:quiculator/screens/home_screen.dart';

void main() {
  runApp(const Quiculator());

}

class Quiculator extends StatelessWidget {
  const Quiculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData.dark(),
    );
  }
}
