import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import '../models/todo_model.dart';

part 'todos_event.dart';
part 'todos_state.dart';

int indexs = 0;
bool start = false;
Color colortodo = const Color.fromARGB(255, 5, 156, 156);

class TodoBloc extends Bloc<TodosEvent, TodosState> {
  TodoBloc() : super(const TodosLoaded()) {
    on<AddTodo>(_onAddTodo);
    on<DoneTodo>(_onDoneTodo);
    on<DeleteTodo>(_onDeleteTodo);
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

  void _onDoneTodo(DoneTodo event, Emitter<TodosState> emit) {
    final state = this.state;
    if (state is TodosLoaded) {
      List<Todo> todos = (state.todos.map((todo) {
        return todo.id == event.todo.id ? event.todo : todo;
      })).toList();
      emit(
        TodosLoaded(
          todos: todos,
        ),
      );
    }
  }

  void _onDeleteTodo(DeleteTodo event, Emitter<TodosState> emit) {
    final state = this.state;
    if (state is TodosLoaded) {
      List<Todo> todos = state.todos.where((todo) {
        return todo.id != event.todo.id;
      }).toList();
      emit(TodosLoaded(todos: todos));
    }
  }
}
