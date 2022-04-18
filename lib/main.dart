import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/BLoC/todo_bloc.dart';
import 'todoapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<TodoBloc>(
        create: (context) => TodoBloc(),
        child: ToDoApp(),
      ),
    );
  }
}
