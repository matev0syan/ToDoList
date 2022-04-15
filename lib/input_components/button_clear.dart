import 'package:flutter/material.dart';
import 'package:todolist/BLoC/example.dart';
import 'package:todolist/input_components/input_space.dart';

class ButtonClear extends StatefulWidget {
  const ButtonClear({Key? key}) : super(key: key);

  @override
  State<ButtonClear> createState() => _ButtonClearState();
}

class _ButtonClearState extends State<ButtonClear> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          inputtext.clear();
        },
      ),
    );
  }
}
