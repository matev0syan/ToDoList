import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String id;
  final String text;
  bool? iscomplected;
  bool? iscanceled;

  Todo({
    required this.id,
    required this.text,
    this.iscomplected,
    this.iscanceled,
  }) {
    iscanceled = iscanceled ?? false;
    iscomplected = iscomplected ?? false;
  }

  Todo copyWith(
      {String? id, String? text, bool? iscomplected, bool? iscanceled}) {
    return Todo(
      id: id ?? this.id,
      text: text ?? this.text,
      iscomplected: iscomplected ?? this.iscomplected,
      iscanceled: iscanceled ?? this.iscanceled,
    );
  }

  @override
  List<Object?> get props => [
        id,
        text,
        iscomplected,
        iscanceled,
      ];
  static List<Todo> todos = [
    Todo(
      id: '1',
      text: "Sample ToDo 1",
    ),
    Todo(
      id: '3',
      text: "Sample ToDo 2",
    ),
    Todo(
      id: '3',
      text: "Sample ToDo 3",
    ),
  ];
}
