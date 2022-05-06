import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/todos_bloc.dart';
import 'todoapp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) =>
    //           TodoBloc()..add(LoadTodo(todos: [Todo(id: 'id', text: 'text')])),
    //     ),
    //   ],
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => TodoBloc(),
        child: const ToDoApp(),
      ),
    );
  }
}
