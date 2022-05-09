import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.red[200],
                border: Border.all(width: 2, color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(150))),
            child: Center(
                child: Text(
              "Hello World",
              style: TextStyle(color: Colors.white, fontSize: 40),
            )),
          ),
        ),
      ),
    );
  }
}
