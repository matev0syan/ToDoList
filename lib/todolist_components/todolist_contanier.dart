import 'package:flutter/material.dart';
import 'package:todolist/input_components/input_space.dart';

import 'to_do.dart';

class ToDoContainer extends StatelessWidget {
  const ToDoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        constraints: BoxConstraints(minHeight: 680),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 5, 156, 156),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ToDO(),
      ),
    );
  }
}
