import 'package:flutter/material.dart';
import 'input_components/button_add.dart';
import 'input_components/button_clear.dart';
import 'input_components/input_space.dart';
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
          const InputSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ButtonAdd(),
              ButtonClear(),
            ],
          ),
          const ToDoContainer(),
        ],
      ),
    );
  }
}
