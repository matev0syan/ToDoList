import 'dart:async';

import 'package:flutter/material.dart';

enum TextEvent { event_add, event_clear }

class TextBloc {
  String _text = '';

  final _input = StreamController<TextEvent>();
  StreamSink<TextEvent> get inputsink => _input.sink;

  final _output = StreamController<String>();
  Stream<String> get outputstream => _output.stream;

  void _eventext(TextEvent event) {
    if (event == TextEvent.event_add)
      _text = 'Add text';
    else if (event == TextEvent.event_clear)
      _text = '';
    else
      throw Exception("wrong");
    _output.sink.add(_text);
  }

  ColorsBloc() {
    _input.stream.listen(_eventext);
  }

  void dispose() {
    _input.close();
    _output.close();
  }
}
