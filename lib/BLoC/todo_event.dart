import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/todolist_components/to_do.dart';

class ToDoEvent {}

class ButtonAdd extends ToDoEvent {
  String userAdd = '';
  ButtonAdd({required this.userAdd});
}

class ButtonDelete extends ToDoEvent {
  int indexs = 0;
  ButtonDelete({required this.indexs});
}

class ButtonColorDone extends ToDoEvent {
  Color itemColor = Colors.black;
  ButtonColorDone({required this.itemColor});
}
