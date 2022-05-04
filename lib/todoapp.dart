import 'package:flutter/material.dart';
import 'todolist_components/input_space.dart';
import 'todolist_components/todolist_contanier.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'To Do List',
          style: TextStyle(
            fontFamily: 'Times New Roman',
            color: Color.fromARGB(255, 5, 156, 156),
          ),
        )),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
         InputSpace(),
          const ToDoContainer(),
        ],
      ),
    );
  }
}
