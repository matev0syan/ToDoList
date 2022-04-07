  // Padding(
  //                 padding: const EdgeInsets.all(15.0),
  //                 child: TextField(
  //                   controller: _controller,
  //                   decoration: InputDecoration(
  //                       hintText: 'Add event',
  //                       border: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(20)),
  //                       fillColor: Color.fromARGB(255, 5, 156, 156),
  //                       filled: true),
  //                 ),
  //               ),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.fromLTRB(60, 20, 10, 10),
  //                     child: ElevatedButton(
  //                       style: ElevatedButton.styleFrom(
  //                         minimumSize: const Size(120, 40),
  //                         side: const BorderSide(
  //                           color: Color.fromARGB(255, 5, 156, 156),
  //                         ),
  //                         primary: const Color.fromARGB(255, 0, 0, 0),
  //                         onPrimary: const Color.fromARGB(255, 5, 156, 156),
  //                       ),
  //                       child: Text('Add'),
  //                       onPressed: adding,
  //                     ),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.fromLTRB(10, 20, 60, 10),
  //                     child: ElevatedButton(
  //                       style: ElevatedButton.styleFrom(
  //                         minimumSize: const Size(120, 40),
  //                         side: const BorderSide(
  //                           color: Color.fromARGB(255, 5, 156, 156),
  //                         ),
  //                         primary: const Color.fromARGB(255, 0, 0, 0),
  //                         onPrimary: const Color.fromARGB(255, 5, 156, 156),
  //                       ),
  //                       child: const Text('Clear'),
  //                       onPressed: () {
  //                         _controller.clear();
  //                       },
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.all(20.0),
  //                 child: Container(
  //                   constraints: BoxConstraints(minHeight: 650),
  //                   width: double.infinity,
  //                   decoration: BoxDecoration(
  //                     border: Border.all(
  //                       color: const Color.fromARGB(255, 5, 156, 156),
  //                     ),
  //                     borderRadius: BorderRadius.circular(20),
  //                     // color: Color.fromARGB(255, 0, 0, 0),
  //                   ),
  //                   child: Column(children: [
  //                     Text(
  //                       '$_controller',
  //                       style: TextStyle(color: Colors.red),
  //                     ),
  //                   ]),
  //                 ),
  //               ),