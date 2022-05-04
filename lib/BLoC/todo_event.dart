part of 'todo_bloc.dart';

abstract class TodoEvent {}

class ToDoAdd extends TodoEvent {
  String input;

  ToDoAdd({required this.input});
}

class ToDoDone extends TodoEvent {}

class ToDoDelete extends TodoEvent {
  int id;
  ToDoDelete({required this.id});
}
