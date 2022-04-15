import 'package:flutter/material.dart';

var inputtext = TextEditingController();
String UserAdd = '';

class InputSpace extends StatefulWidget {
  const InputSpace({Key? key}) : super(key: key);

  @override
  State<InputSpace> createState() => _InputSpaceState();
}

class _InputSpaceState extends State<InputSpace> {
  @override
  Widget build(BuildContext context) {
    //  String UserAdd = '';
    return StreamBuilder<String>(builder: (context, snapshot) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          onChanged: (String value) {
            UserAdd = value;
          },
          controller: inputtext,
          decoration: InputDecoration(
              hintText: 'Add event',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: const Color.fromARGB(255, 5, 156, 156),
              filled: true),
        ),
      );
    });
  }
}
