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
  TextEditingController inputText = TextEditingController();
  List todoList = [];
  Color colortodo = Color.fromARGB(255, 5, 156, 156);
  String useradd = '';
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
          body: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: colortodo,
                    borderOnForeground: true,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${index + 1}'),
                          Text(todoList[index]),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.done_outline),
                                onPressed: () {
                                  setState(() {
                                    colortodo =
                                        Color.fromARGB(255, 5, 207, 160);
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete_outline),
                                onPressed: () {
                                  setState(() {
                                    todoList.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
              }),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 40),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 5, 156, 156),
                    ),
                    primary: const Color.fromARGB(255, 0, 0, 0),
                    onPrimary: const Color.fromARGB(255, 5, 156, 156),
                  ),
                  child: Text('Add'),
                  onPressed: () {
                    setState(() {
                      if (useradd != '') {
                        colortodo = Color.fromARGB(255, 5, 156, 156);
                        todoList.add(useradd);
                        inputText.clear();
                        useradd = '';
                      } else
                        print('eror');
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 40),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 5, 156, 156),
                    ),
                    primary: const Color.fromARGB(255, 0, 0, 0),
                    onPrimary: const Color.fromARGB(255, 5, 156, 156),
                  ),
                  child: Text('Clear'),
                  onPressed: () {
                    setState(() {
                      inputText.clear();
                    });
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: inputText,
                  onChanged: (String value) {
                    useradd = value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Add event',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fillColor: Color.fromARGB(255, 5, 156, 156),
                      filled: true),
                ),
              )),
        ));
  }
}
