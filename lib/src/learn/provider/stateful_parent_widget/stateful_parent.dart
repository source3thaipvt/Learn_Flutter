import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/stateful_parent_widget/stateless_child.dart';

class StatefulParent extends StatefulWidget {
  const StatefulParent({Key? key}) : super(key: key);

  @override
  _StatefulParentState createState() => _StatefulParentState();
}

class _StatefulParentState extends State<StatefulParent> {
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
          title: const Text("Child State Widget"),
        ),
        body: StatelessChild(
          number: _number,
          increase: _increase,
          decrease: _decrease,
        ));
  }
}
