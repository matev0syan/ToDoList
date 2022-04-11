import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'input_components/button_add.dart';
import 'input_components/button_clear.dart';
import 'input_components/input_space.dart';
import 'todolist_components/todolist_contanier.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Center(
            child: Text(
          'To Do List',
          style: TextStyle(
            fontFamily: 'Times New Roman',
            color: Color.fromARGB(255, 5, 156, 156),
          ),
        )),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
          InputSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonAdd(),
              ButtonClear(),
            ],
          ),
          ToDoContainer(),
        ],
      ),
    );
  }
}
