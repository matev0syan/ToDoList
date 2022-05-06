import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/models/todo_model.dart';
import '../bloc/todos_bloc.dart';

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
        if (state is TodosLoaded && start == true) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: state.todos.length,
              itemBuilder: (BuildContext context, int index) {
                return _todoCard(
                  context,
                  state.todos[index],
                  index,
                );
              });
        }
        if (start == false) {
          return const Center(
              child: Text(
            'Nothing to do',
            style: TextStyle(
                color: Color.fromARGB(137, 5, 156, 156),
                fontFamily: 'Times New Roman'),
          ));
        } else {
          return const Center(child: Text('Sumething went wrong!!'));
        }
      },
    );
  }
}

Card _todoCard(BuildContext context, Todo todo, int index) {
  if (todo.iscomplected == true) {
    colortodo = const Color.fromARGB(255, 1, 255, 162);
  } else if (todo.iscomplected == false) {
    colortodo = const Color.fromARGB(255, 5, 156, 156);
  }
  return Card(
      color: colortodo,
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  color: colortodo,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text("${index + 1}",
                    style: const TextStyle(
                      fontFamily: 'Times New Roman',
                    )),
              ),
            ),
            Text(
              todo.text,
              style:
                  const TextStyle(fontFamily: 'Times New Roman', fontSize: 18),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.done_outline),
                  onPressed: () {
                    context
                        .read<TodoBloc>()
                        .add(DoneTodo(todo: todo.copyWith(iscomplected: true)));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () {
                    context
                        .read<TodoBloc>()
                        .add(DeleteTodo(todo: todo.copyWith(iscanceled: true)));
                  },
                ),
              ],
            )
          ],
        ),
      ));
}
