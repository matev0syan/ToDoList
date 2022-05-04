import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/todolist_components/toto_list.dart';

import '../bloc/todo_bloc.dart';

final inputText = TextEditingController();

class InputSpace extends StatelessWidget {
  InputSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            onChanged: (String value) {},
            controller: inputText,
            decoration: InputDecoration(
                hintText: 'Add event',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: const Color.fromARGB(255, 5, 156, 156),
                filled: true),
          ),
        ),
        Row(
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
                  ind = 1;
                  indexs++;
                  context.read<TodoBloc>().add(ToDoAdd(input: inputText.text));
                  inputText.clear();
                  // BlocProvider.of<TodoBloc>(context)
                  //     .add(ToDoAdd(input: inputText.text));
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
                  inputText.clear();
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
