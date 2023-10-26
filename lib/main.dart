import 'package:flutter/material.dart';

void main() {
  runApp(const Quiculator());
}

class Quiculator extends StatelessWidget {
  const Quiculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Center(
          child: Text('hello'),
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
