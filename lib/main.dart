import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'todoapp.dart';
import 'package:todolist/bloc/todo_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<TodoBloc>(
        create: (context) => TodoBloc(),
        child: const ToDoApp(),
      ),
    );
  }
}
