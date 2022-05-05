import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'todo_item.dart';

part 'todos_event.dart';
part 'todos_state.dart';

int indexs = 0;
int id = 0;

class TodoBloc extends Bloc<TodosEvent, TodosState> {
  TodoBloc() : super(TodosEmpty()) {
    on<LoadTodo>(_onLoadTodus);
    on<AddTodo>(_onAddTodo);
    // on<DeleteTodo>(_onDeleteTodo);
  }

  void _onLoadTodus(LoadTodo event, Emitter<TodosState> emit) {
    emit(TodosLoaded(todos: event.todos));
  }

  void _onAddTodo(AddTodo event, Emitter<TodosState> emit) {
    final state = this.state;
    if (state is TodosLoaded) {
      emit(
        TodosLoaded(
          todos: List<Todo>.from(state.todos)..add(event.todo),
        ),
      );
    }
  }
}

//   void _onDeleteTodo(DeleteTodo event, Emitter<TodosState> emit) {
//     final state = this.state;
//     if (state is TodosLoaded) {
//       List<Todo> todos = state.todos.where((todo) {
//         return todo.id != event.todo.id;
//       }).toList();

//       emit(
//         TodosLoaded(
//           todos: todos,
//         ),
//       );
//     }
//   }
// }
