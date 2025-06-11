import 'package:flutter/material.dart';

// import 'CounterPage.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to-do-list',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}



