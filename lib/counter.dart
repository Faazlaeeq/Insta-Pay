import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int i = 0;
  increment() {
    setState(() {
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("$i"),
      TextButton(
          onPressed: () {
            increment();
          },
          child: const Text("Add"))
    ]);
  }
}
