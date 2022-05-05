import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/bloc/todo_item.dart';
import '../bloc/todos_bloc.dart';

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
    return BlocBuilder<TodoBloc, TodosState>(
      builder: (context, state) {
        if (state is TodosLoaded) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: state.todos.length,
              itemBuilder: (BuildContext context, int index) {
                return _todoCard(context, state.todos[index]);
              });
        }
        if (state is TodosEmpty) {
          return Center(
              child: Container(
            child: const Text(
              'Nothing to do',
              style: TextStyle(
                  color: Color.fromARGB(137, 5, 156, 156),
                  fontFamily: 'Times New Roman'),
            ),
          ));
        } else {
          return const Center(child: Text('Sumething went wrong!!'));
        }
      },
    );
  }
}

Card _todoCard(BuildContext context, Todo todo) {
  return Card(
      color: colortodo,
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${todo.id}"),
            Text('${todo.text}'),
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
                    context.read<TodoBloc>().add(DeleteTodo(todo: todo));
                  },
                ),
              ],
            )
          ],
        ),
      ));
}
