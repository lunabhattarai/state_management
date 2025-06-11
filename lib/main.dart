import 'package:flutter/material.dart';

import 'CounterPage.dart';

void main() {
  runApp(const MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple State Management',
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}


