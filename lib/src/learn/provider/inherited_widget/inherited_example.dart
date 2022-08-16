import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InheritedExample extends StatefulWidget {
  const InheritedExample({Key? key}) : super(key: key);

  @override
  _InheritedExampleState createState() => _InheritedExampleState();
}

class _InheritedExampleState extends State<InheritedExample> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NumberInheritedWidget(number: number, child: const NestedWidget()),
          ElevatedButton(
              onPressed: (() => {
                    setState(() => {number++})
                  }),
              child: const Text("Increase")),
          ElevatedButton(
              onPressed: (() => {
                    setState(() => {number--})
                  }),
              child: const Text("Decrease")),
        ],
      )),
    );
  }
}

class NumberInheritedWidget extends InheritedWidget {
  NumberInheritedWidget({
    Key? key,
    required this.number,
    required Widget child,
  }) : super(child: child);

  final int number;

  //access the context
  static NumberInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberInheritedWidget>();
  }

  @override
  bool updateShouldNotify(NumberInheritedWidget oldWidget) =>
      number != oldWidget.number;
}

class NestedWidget extends StatelessWidget {
  const NestedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? number = NumberInheritedWidget.of(context)?.number;
    return Text("$number");
  }
}
