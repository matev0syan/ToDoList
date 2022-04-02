import 'dart:html';

import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 20, 10, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(120, 40),
          side: BorderSide(
            color: Color.fromARGB(255, 5, 156, 156),
          ),
          primary: Color.fromARGB(255, 0, 0, 0),
          onPrimary: Color.fromARGB(255, 5, 156, 156),
        ),
        child: Text('Add'),
        onPressed: () {},
      ),
    );
  }
}
