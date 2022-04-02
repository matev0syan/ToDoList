import 'package:flutter/material.dart';

import 'InputSpace.dart';
import 'ButtonAdd.dart';
import 'ButtonClear.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          title: Center(
              child: Text(
            'To Do List',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Color.fromARGB(255, 5, 156, 156),
            ),
          )),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Column(
          children: [
            InputSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ButtonAdd(), ButtonClear()],
            )
          ],
        ));
  }
}
