import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/input_components/input_space.dart';

void ClearText() {
  inputtext.clear();
}

// enum ButtonEvent { textAdd, textDelete }

// class ToDoBloc {
//   final _statetStream = StreamController<String>();
//   StreamSink<String> get buttonsink => _statetStream.sink;
//   Stream<String> get buttonstream => _statetStream.stream;

//   final _eventStream = StreamController<ButtonEvent>();
//   StreamSink<ButtonEvent> get eventsink => _eventStream.sink;
//   Stream<ButtonEvent> get eventstream => _eventStream.stream;

//   ToDoBloc() {
//     List todos = [];
//     int index = 0;
//     eventstream.listen((event) {
//       if (event == ButtonEvent.textAdd)
//         todos[0] = 'hello';
//       else if (event == ButtonEvent.textDelete)
//         todos[0] = 'reset';
//       else
//         print('eror');
//       buttonsink.add(todos[0]);
//     });
//   }
// }















// enum ColorEvent { event_green, event_red }

// class ColorBloc {
//   Color _color = Colors.green;

//   final _input = StreamController<ColorEvent>();
//   StreamSink<ColorEvent> get inputsink => _input.sink;

//   final _output = StreamController<Color>();
//   Stream<Color> get outputstream => _output.stream;

//   void _eventext(ColorEvent event) {
//     if (event == ColorEvent.event_green)
//       _color = Colors.green;
//     else if (event == ColorEvent.event_red)
//       _color = Colors.red;
//     else
//       throw Exception("wrong");
//     _output.sink.add(_color);
//   }

//   ColorsBloc() {
//     _input.stream.listen(_eventext);
//   }

//   void dispose() {
//     _input.close();
//     _output.close();
//   }
// }
