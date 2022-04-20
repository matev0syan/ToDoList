import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/input_components/input_space.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState(index: [], text: [])) {
    on<ToDoAdd>((event, emit) {
      if (inputtext.text != '') {
        state.text.add(inputtext.text);
        state.index.add(state.text.length);
        inputtext.clear();
      }
      emit(TodoState(index: state.index, text: state.text));
    });
    // on<ToDoDone>((event, emit) {

    //   emit(TodoState(index: state.index, text: state.text));
    // });
    on<ToDoDelete>((event, emit) {
      emit(TodoState(index: state.index, text: state.text..removeAt(0)));
    });
    on<ToDoClear>((event, emit) {
      inputtext.clear();
      emit(TodoState(index: state.index, text: state.text));
    });
  }
}
