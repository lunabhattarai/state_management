<<<<<<< HEAD
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 165, 97, 97),
//         title: const Text('To-Do List', style: TextStyle(color: Colors.white)),
//         leading: const Icon(Icons.menu, color: Colors.white),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 14.0),
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: Icon(
//                 Icons.person,
//                 color: Color.fromARGB(255, 216, 194, 194),
//               ),
//             ),
//           ),
//         ],
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Tasks',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromRGBO(158, 81, 81, 1),
//               ),
//             ),
//             const SizedBox(height: 15),
//             _buildTodoItem('ID'),
//             _buildTodoItem('To-Do-List'),
//             _buildTodoItem('Completed'),
//             _buildTodoItem('Pending'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTodoItem(String task) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 208, 96, 113),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: const Color.fromARGB(255, 224, 221, 221)),
//       ),
//       child: Row(
//         children: [
//           const Icon(
//             Icons.check_box_outline_blank,
//             color: Color.fromARGB(255, 231, 227, 227),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Text(
//               task,
//               style: const TextStyle(
//                 fontSize: 18,
//                 color: Color.fromRGBO(231, 227, 227, 0.867),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ToDo {
//   String title;
//   bool isDone;

//   ToDo({required this.title, this.isDone = false});
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<ToDo> _todoList = [];
//   final TextEditingController _controller = TextEditingController();

//   void _addTodo() {
//     final newTask = _controller.text.trim();
//     if (newTask.isNotEmpty) {
//       setState(() {
//         _todoList.add(ToDo(title: newTask));
//         _controller.clear();
//       });
//     }
//   }

//   void _toggleTask(ToDo task) {
//     setState(() {
//       task.isDone = !task.isDone;
//     });
//   }

//   void _deleteTask(int index) {
//     setState(() {
//       _todoList.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 165, 97, 97),
//         title: const Text('To-Do List', style: TextStyle(color: Colors.white)),
//         leading: const Icon(Icons.menu, color: Colors.white),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 14.0),
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: Icon(Icons.person, color: Color.fromARGB(255, 216, 194, 194)),
//             ),
//           ),
//         ],
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Title
//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Tasks',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromRGBO(158, 81, 81, 1),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15),

//             // Input Field + Add Button
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: const InputDecoration(
//                       hintText: 'Enter new task...',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: _addTodo,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.deepPurple,
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                   ),
//                   child: const Text('Add'),
//                 )
//               ],
//             ),
//             const SizedBox(height: 20),

//             // Task List
//             Expanded(
//               child: _todoList.isEmpty
//                   ? const Center(child: Text('No tasks yet!'))
//                   : ListView.builder(
//                       itemCount: _todoList.length,
//                       itemBuilder: (context, index) {
//                         final task = _todoList[index];
//                         return _buildTodoItem(task, index);
//                       },
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTodoItem(ToDo task, int index) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 6),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 208, 96, 113),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: const Color.fromARGB(255, 224, 221, 221)),
//       ),
//       child: Row(
//         children: [
//           GestureDetector(
//             onTap: () => _toggleTask(task),
//             child: Icon(
//               task.isDone ? Icons.check_box : Icons.check_box_outline_blank,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Text(
//               task.title,
//               style: TextStyle(
//                 fontSize: 18,
//                 color: const Color.fromRGBO(231, 227, 227, 0.867),
//                 decoration: task.isDone ? TextDecoration.lineThrough : null,
//               ),
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.delete, color: Colors.white),
//             onPressed: () => _deleteTask(index),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Updated version with search and toggle support for fetched data

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';
import '../models/todo_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<ToDoProvider>(context, listen: false).fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ToDoProvider>(context);
    final List<ToDo> todos = _searchController.text.isEmpty
        ? provider.tasks
        : provider.search(_searchController.text);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'lib/assets/image1.jpg',
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "All ToDos",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: provider.tasks.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        final task = todos[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Checkbox(
                                value: task.isCompleted,
                                onChanged: (_) =>
                                    provider.toggleStatus(task.id),
                              ),
                              Expanded(
                                child: Text(
                                  task.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: task.isCompleted
                                        ? TextDecoration.lineThrough
                                        : null,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () => provider.deleteTask(task.id),
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                splashRadius: 20,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: 'Add a new todo item',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  backgroundColor: Colors.deepPurple,
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ],
            ),
=======
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'To-Do List',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.redAccent),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tasks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 15),
            _buildTodoItem('ID'),
            _buildTodoItem('To-Do-List'),
            _buildTodoItem('Completed'),

>>>>>>> 4755f80563a67f4e3e7cd4e02da30bfd250fa185
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
=======

  Widget _buildTodoItem(String task) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.redAccent),
      ),
      child: Row(
        children: [
          const Icon(Icons.check_box_outline_blank, color: Colors.redAccent),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              task,
              style: const TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
>>>>>>> 4755f80563a67f4e3e7cd4e02da30bfd250fa185
}
