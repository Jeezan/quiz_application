import 'package:flutter/material.dart';
import 'package:quiz_application/views/results_screen.dart';
import 'package:quiz_application/views/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResultsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}