import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Center(
              child: Text(
            "First Flutter App",
            style: TextStyle(color: Colors.red, fontFamily: "DancingScript"),
          )),
          actions: const [
            InkWell(child: Icon(Icons.settings)),
          ],
        ),
        body: Text(
          'Flutter Hello',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
