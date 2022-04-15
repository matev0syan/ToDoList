import 'package:flutter/material.dart';
import 'package:todolist/BLoC/example.dart';

class ToDO extends StatefulWidget {
  const ToDO({Key? key, this.text1 = ''}) : super(key: key);
  final String text1;

  @override
  State<ToDO> createState() => _ToDOState();
}

class _ToDOState extends State<ToDO> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: const Color.fromARGB(255, 5, 156, 156),
              borderOnForeground: true,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('not text'),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.done_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_outline),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ));
        });
  }
}
