import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/bloc/todo_item.dart';

import '../bloc/todo_bloc.dart';
import 'input_space.dart';

int ind = 0;
Color colortodo = Color.fromARGB(255, 5, 156, 156);

class ToDO extends StatefulWidget {
  const ToDO({Key? key, this.text1 = ''}) : super(key: key);
  final String text1;

  @override
  State<ToDO> createState() => _ToDOState();
}

class _ToDOState extends State<ToDO> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (ind == 1) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: indexs,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: colortodo,
                    borderOnForeground: true,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${index + 1}"),
                          Text('${state.todoItems[index]}'),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.done_outline),
                                onPressed: () {
                                  colortodo = Colors.red;
                                  // context.read<TodoBloc>().add(ToDoDone());
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete_outline),
                                onPressed: () {
                                  indexs = index;
                                  context
                                      .read<TodoBloc>()
                                      .add(ToDoDelete(id: indexs));
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
              });
        } else {
          return Center(
              child: Container(
            child: Text(
              'Nothing to do',
              style: TextStyle(
                  color: Color.fromARGB(137, 5, 156, 156),
                  fontFamily: 'Times New Roman'),
            ),
          ));
        }
      },
    );
  }
}
