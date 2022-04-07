import 'package:flutter/material.dart';
import 'package:todolist/BLoC/buttn_color.dart';

class ToDO extends StatefulWidget {
  const ToDO({Key? key, this.text1 = ''}) : super(key: key);
  final String text1;

  @override
  State<ToDO> createState() => _ToDOState();
}

class _ToDOState extends State<ToDO> {
  ColorBloc _bloc = ColorBloc();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(
      stream: _bloc.outputstream,
      initialData: Colors.black,
      builder: (context, snapshot) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            constraints: BoxConstraints(minHeight: 80),
            width: double.infinity,
            decoration: BoxDecoration(
              color: snapshot.data,
              border: Border.all(
                color: const Color.fromARGB(255, 5, 156, 156),
              ),
              borderRadius: BorderRadius.circular(25),
              // color: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text1,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 5, 156, 156),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          _bloc.inputsink.add(ColorEvent.event_green);
                        },
                        child: Icon(
                          Icons.check_box_outlined,
                          color: const Color.fromARGB(255, 5, 156, 156),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          _bloc.inputsink.add(ColorEvent.event_red);
                        },
                        child: Icon(
                          Icons.delete_outline,
                          color: const Color.fromARGB(255, 5, 156, 156),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
