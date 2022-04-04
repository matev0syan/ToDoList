import 'package:flutter/material.dart';

class ToDoContainer extends StatelessWidget {
  const ToDoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        constraints: BoxConstraints(minHeight: 650),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 5, 156, 156),
          ),
          borderRadius: BorderRadius.circular(20),
          // color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}