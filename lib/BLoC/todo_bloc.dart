import 'package:bloc/bloc.dart';
import 'package:todolist/bloc/todo_item.dart';

part 'todo_event.dart';
part 'todo_state.dart';

int indexs = 0;

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState(todoItems: [])) {
    on<ToDoAdd>((event, emit) {
      if (event.input != '') {
        state.todoItems.add(Item(text: event.input));
      }

      emit(TodoState(todoItems: state.todoItems));
    });
    on<ToDoDelete>(((event, emit) {
      print(event.id);
      emit(TodoState(todoItems: state.todoItems..removeAt(event.id)));
    }));
  }
}
