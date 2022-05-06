import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/todos_bloc.dart';
import '../models/todo_model.dart';

class InputButtons extends StatelessWidget {
  const InputButtons({Key? key, required this.controllerInput})
      : super(key: key);
  final TextEditingController controllerInput;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
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
              if (controllerInput.text != '') {
                start = true;
                indexs++;
                var todo = Todo(id: indexs, text: controllerInput.text);
                context.read<TodoBloc>().add(AddTodo(todo: todo));
                controllerInput.clear();
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 60, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(120, 40),
              side: const BorderSide(
                color: Color.fromARGB(255, 5, 156, 156),
              ),
              primary: const Color.fromARGB(255, 0, 0, 0),
              onPrimary: const Color.fromARGB(255, 5, 156, 156),
            ),
            child: const Text('Clear'),
            onPressed: () {
              controllerInput.clear();
            },
          ),
        )
      ],
    );
  }
}
