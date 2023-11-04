import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiculator/provider/cal_provider.dart';
import 'package:quiculator/screens/home_screen.dart';

void main() {
  runApp(const Quiculator());

}

class Quiculator extends StatelessWidget {
  const Quiculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: ThemeData.dark(),
      ),
    );
  }
}
