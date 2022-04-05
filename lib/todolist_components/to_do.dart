import 'package:flutter/material.dart';

class ToDO extends StatelessWidget {
  const ToDO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          constraints: BoxConstraints(minHeight: 80),
          width: double.infinity,
          decoration: BoxDecoration(
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
                  'Not event',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 5, 156, 156),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: const Color.fromARGB(255, 5, 156, 156),
                    ),
                    Icon(
                      Icons.delete_outline,
                      color: const Color.fromARGB(255, 5, 156, 156),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
