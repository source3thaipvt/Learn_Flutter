import 'package:flutter/material.dart';
import 'package:hello_world/data/listData.dart';

void main() {
  runApp(MyStatelessWidget());
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

class MyGridView extends StatelessWidget {
  final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // child: GridView.count(
          //   crossAxisCount: 2,
          //   scrollDirection: Axis.vertical,
          //   padding: EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 20),
          //   // reverse: true,
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 20,
          //   childAspectRatio: 0.7,
          //   children: [
          //     Container(color: Colors.amber[700]),
          //     Container(color: Colors.amber[400]),
          //     Container(color: Colors.amber[100]),
          //     Container(color: Colors.blue[700]),
          //     Container(color: Colors.blue[400]),
          //     Container(color: Colors.blue[100]),
          //     Container(color: Colors.red[700]),
          //     Container(color: Colors.red[400]),
          //     Container(color: Colors.red[100]),
          //   ],
          // ),
          child: GridView.builder(
              itemCount: colorCodes.length,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                // childAspectRatio: 0.9,
                mainAxisExtent: 300,
              ),
              itemBuilder: (context, index) {
                var color = colorCodes[index];
                return Container(
                  color: Colors.amber[color],
                );
              }),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            // child: Container(
            //   padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            //   width: 300,
            //   height: 300,
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     border: Border.all(width: 3, color: Colors.amber),
            //   ),
            //   child: Text(
            //     'Padding',
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            child: Container(
              color: Colors.grey[300],
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                // children: [
                //   Flexible(
                //     fit: FlexFit.tight,
                //     child: _blueBox(),
                //     flex: 3,
                //   ),
                //   SizedBox(
                //     width: 10,
                //   ),
                //   Flexible(
                //     fit: FlexFit.tight,
                //     child: _blueBox(),
                //     flex: 2,
                //   ),
                //   SizedBox(
                //     height: 70,
                //     width: 70,
                //     child: _blueBox(),
                //   ),
                //   Flexible(
                //     child: _blueBox(),
                //     flex: 1,
                //   ),
                //   Flexible(
                //     child: _blueBox(),
                //     flex: 1,
                //   ),
                // ],

                children: [
                  _blueBox(),
                  Spacer(
                    flex: 1,
                  ),
                  _blueBox(),
                  Spacer(
                    flex: 6,
                  ),
                  _blueBox(),
                ],
              ),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   // mainAxisSize: MainAxisSize.min,
              //   children: [
              //     _blueBox(),
              //     _blueBox(),
              //     SizedBox(
              //       height: 70,
              //       width: 70,
              //       child: _blueBox(),
              //     ),
              //     _blueBox(),
              //     _blueBox(),
              //   ],
              // ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _blueBox() {
    return Container(
      width: 50,
      height: 50,
      // color: Colors.blue,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
