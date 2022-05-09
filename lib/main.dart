import 'package:flutter/material.dart';

void main() {
  runApp(MyImage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // padding: EdgeInsets.all(15),
            // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            // transform: Matrix4.translationValues(-20, 40, 0),
            alignment: Alignment.center,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red[200],
              border: Border.all(width: 2, color: Colors.blue),
              // borderRadius: BorderRadius.all(Radius.circular(150))
            ),
            child: Text(
              "Hello World",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.green,
                decorationStyle: TextDecorationStyle.dotted,
                //khoang cach giua cac ky tu
                letterSpacing: 5,
                //khoang cach giua cac tu
                wordSpacing: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: ClipOval(
              child: Image.network(
                'https://w7.pngwing.com/pngs/595/79/png-transparent-dart-programming-language-flutter-object-oriented-programming-flutter-logo-class-fauna-bird.png',
                fit: BoxFit.cover,
              ),
            ),
            // decoration: BoxDecoration(
            //   color: Colors.blue,
            //   borderRadius: BorderRadius.circular(150),
            //   image: DecorationImage(
            //     image: NetworkImage(
            //       'https://w7.pngwing.com/pngs/595/79/png-transparent-dart-programming-language-flutter-object-oriented-programming-flutter-logo-class-fauna-bird.png',
            //     ),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // child: Image.asset(
            //   'lib/src/assets/images/logo3x.png',
            //   alignment: Alignment.topCenter,
            //   // color: Colors.yellow,
            //   // colorBlendMode: BlendMode.colorBurn,
            //   // fit: BoxFit.cover,
            //   //lap lai anh
            //   // repeat: ImageRepeat.repeat,
            // ),
          ),
        ),
      ),
    );
  }
}
