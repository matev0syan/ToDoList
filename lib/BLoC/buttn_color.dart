import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { event_green, event_red }

class ColorBloc {
  Color _color = Colors.green;

  final _input = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get inputsink => _input.sink;

  final _output = StreamController<Color>();
  Stream<Color> get outputstream => _output.stream;

  void _eventext(ColorEvent event) {
    if (event == ColorEvent.event_green)
      _color = Colors.green;
    else if (event == ColorEvent.event_red)
      _color = Colors.red;
    else
      throw Exception("wrong");
    _output.sink.add(_color);
  }

  ColorsBloc() {
    _input.stream.listen(_eventext);
  }

  void dispose() {
    _input.close();
    _output.close();
  }
}
