import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:todolist/input_components/input_space.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState(index: [], text: [])) {
    on<ToDoAdd>((event, emit) {
      if (inputtext.text != '') {
        state.text.add(inputtext.text);
        state.index.add(state.text.length);
      }
      emit(TodoState(index: state.index, text: state.text));
    });
    // on<ToDoDelete>((event, emit) {
    //   for (var i = 0; i < state.text.length; i++) {
    //     if(state.index[i]==)
    //   }
    //   emit(TodoState(index: state.index, text: state.text));
    // });
  }
}
