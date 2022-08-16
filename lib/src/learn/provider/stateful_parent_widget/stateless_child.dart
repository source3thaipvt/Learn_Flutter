import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessChild extends StatelessWidget {
  final int number;
  final Function() increase;
  final Function() decrease;

  const StatelessChild({
    Key? key,
    required int this.number,
    required void Function() this.increase,
    required void Function() this.decrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$number"),
          ElevatedButton(onPressed: increase, child: const Text("Increase")),
          ElevatedButton(onPressed: decrease, child: const Text("Decrease")),
        ],
      )),
    );
  }
}
