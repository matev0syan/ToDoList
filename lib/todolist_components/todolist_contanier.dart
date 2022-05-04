import 'package:flutter/material.dart';
import 'toto_list.dart';

class ToDoContainer extends StatelessWidget {
  const ToDoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 5, 156, 156),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const ToDO(),
      ),
    );
  }
}
