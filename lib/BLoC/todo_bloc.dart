import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../input_components/input_space.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState(text: 0)) {
    on<ToDoDelete>(
      (event, emit) => emit(TodoState(text: state.text - 1)),
    );
    on<ToDoAdd>(
      (event, emit) => emit(TodoState(text: state.text + 1)),
    );
  }
}
