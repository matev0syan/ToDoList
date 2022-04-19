import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/BLoC/todo_bloc.dart';

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
        return ListView.builder(
            shrinkWrap: true,
            itemCount: state.text.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  color: const Color.fromARGB(255, 5, 156, 156),
                  borderOnForeground: true,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<TodoBloc, TodoState>(
                          builder: (context, state) {
                            return Text("${state.index}");
                          },
                        ),
                        Text("${state.text}"),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.done_outline),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_outline),
                              onPressed: () {
                                context.read<TodoBloc>().add(ToDoDelete());
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ));
            });
      },
    );
  }
}
