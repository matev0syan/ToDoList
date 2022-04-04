import 'package:flutter/material.dart';

import '../BLoC/buttn_add_clear.dart';

class InputSpace extends StatefulWidget {
  const InputSpace({Key? key}) : super(key: key);

  @override
  State<InputSpace> createState() => _InputSpaceState();
}

class _InputSpaceState extends State<InputSpace> {
  TextBloc _bloc = TextBloc();

  @override
  void dispouse() {
    _bloc.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _bloc.outputstream,
        initialData: '',
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Add event',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Color.fromARGB(255, 5, 156, 156),
                  filled: true),
            ),
          );
        });
  }
}
