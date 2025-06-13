import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/todo_model.dart';

class ToDoProvider extends ChangeNotifier {
  List<ToDo> _tasks = [];

  List<ToDo> get tasks => _tasks;

  Future<void> fetchTodos() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/todos'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> todosJson = data['todos'];
      _tasks = todosJson.map((json) => ToDo.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load todos');
    }
  }

  void deleteTask(int id) {}

  void toggleStatus(int id) {}

  search(String text) {}
}
