import 'package:flutter/material.dart';
import 'package:hello_world/data/listData.dart';

void main() {
  runApp(MyListView());
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

class MyListView extends StatelessWidget {
  final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            // color: Colors.purple[300],
            // child: ListView.builder(
            //   // scrollDirection: Axis.horizontal,
            //   padding:
            //       EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            //   // reverse: true,
            //   // physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: colorCodes.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       height: 100,
            //       color: Colors.amber[colorCodes[index]],
            //     );
            //   },
            // ),
            child: ListView.separated(
              // scrollDirection: Axis.horizontal,
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              // reverse: true,
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataFromApi.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      dataFromApi[index]['url']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(dataFromApi[index]['text']!),
                  selectedColor: Colors.amber,
                  subtitle: Text(dataFromApi[index]['subtitle']!),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
        ),
      ),
    );
  }
}
