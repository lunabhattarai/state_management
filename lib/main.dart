import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:provider/provider.dart';
import 'providers/todo_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ToDoProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
