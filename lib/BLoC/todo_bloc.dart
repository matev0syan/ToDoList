import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/input_components/input_space.dart';
part 'todo_event.dart';
part 'todo_state.dart';

int indexs = 0;

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState(index: [], toDoAdd: [])) {
    on<ToDoAdd>((event, emit) {
      if (inputText.text != '') {
        state.toDoAdd.add(inputText.text);
        state.index.add(state.toDoAdd.length);
        inputText.clear();
      }
      emit(TodoState(index: state.index, toDoAdd: state.toDoAdd));
    });
    on<ToDoDone>((event, emit) {
      state.toDoAdd[indexs] = 'Done:)';

      emit(TodoState(index: state.index, toDoAdd: state.toDoAdd));
    });
    on<ToDoDelete>((event, emit) {
      emit(TodoState(
          index: state.index, toDoAdd: state.toDoAdd..removeAt(indexs)));
    });
    on<ToDoClear>((event, emit) {
      inputText.clear();
      emit(TodoState(index: state.index, toDoAdd: state.toDoAdd));
    });
  }
}
