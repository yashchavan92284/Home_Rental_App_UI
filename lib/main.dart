import 'package:flutter/material.dart';
import 'package:home_rental_app/pages/getStarted.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Getstarted(),
    );
  }
}
