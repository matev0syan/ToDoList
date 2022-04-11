import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 20, 0, 10),
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
        onPressed: () {},
      ),
    );
  }
}
