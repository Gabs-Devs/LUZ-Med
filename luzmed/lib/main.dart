import 'package:flutter/material.dart';
import './views/HomePage.dart';
import './views/login.dart';

void main() {
  runApp(const LuzMed());
}
class LuzMed extends StatefulWidget {
  const LuzMed({super.key});

  @override
  State<LuzMed> createState() => _LuzMedState();
}

class _LuzMedState extends State<LuzMed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}