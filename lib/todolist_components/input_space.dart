import 'package:flutter/material.dart';
import 'input_buttons.dart';

class InputSpace extends StatelessWidget {
  const InputSpace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final inputText = TextEditingController();
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
        InputButtons(controllerInput: inputText)
      ],
    );
  }
}
