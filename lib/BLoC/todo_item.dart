import 'package:equatable/equatable.dart';

class Item extends Equatable {
  String text;

  Item({required this.text});

  @override
  // TODO: implement stringify
  bool? get stringify => true;
  @override
  List<Object> get props {
    return [text];
  }
}
