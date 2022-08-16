import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({Key? key}) : super(key: key);

  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int _number = 0;

  void _increase() {
    setState(() {
      _number++;
    });
  }

  void _decrease() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$_number"),
          ElevatedButton(onPressed: _increase, child: const Text("Increase")),
          ElevatedButton(onPressed: _decrease, child: const Text("Decrease")),
        ],
      )),
    );
  }
}
