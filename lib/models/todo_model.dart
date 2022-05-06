import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class Todo extends Equatable {
  final int id;
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

  Todo copyWith({int? id, String? text, bool? iscomplected, bool? iscanceled}) {
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
}
