import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/BLoC/todo_bloc.dart';

class ButtonAdd extends StatefulWidget {
  const ButtonAdd({Key? key}) : super(key: key);

  @override
  State<ButtonAdd> createState() => _ButtonAddState();
}

class _ButtonAddState extends State<ButtonAdd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 20, 20, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(120, 40),
          side: const BorderSide(
            color: Color.fromARGB(255, 5, 156, 156),
          ),
          primary: const Color.fromARGB(255, 0, 0, 0),
          onPrimary: const Color.fromARGB(255, 5, 156, 156),
        ),
        child: const Text('Add'),
        onPressed: () {
          context.read<TodoBloc>().add(ToDoAdd());
        },
      ),
    );
  }
}
