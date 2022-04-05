import 'package:flutter/material.dart';
import 'input_components/button_add.dart';
import 'input_components/button_clear.dart';
import 'input_components/input_space.dart';
import 'todolist_components/todolist_contanier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: 'Add event',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fillColor: Color.fromARGB(255, 5, 156, 156),
                        filled: true),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonAdd(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 60, 10),
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
                          _controller.clear();
                        },
                      ),
                    ),
                  ],
                ),
                ToDoContainer(),
              ],
            )));
  }
}
