import 'package:flutter/material.dart';

class InputSpace extends StatelessWidget {
  const InputSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Add event',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            fillColor: Color.fromARGB(255, 5, 156, 156),
            filled: true),
      ),
    );
  }
}
