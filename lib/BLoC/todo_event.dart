part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class ToDoAdd extends TodoEvent {}

class ToDoClear extends TodoEvent {}

class ToDoDone extends TodoEvent {}

class ToDoDelete extends TodoEvent {}
