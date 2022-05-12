import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/data/listData.dart';

void main() {
  runApp(MyPageNavigationTransition());
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

class MyStatelessWidgetRowColumn extends StatelessWidget {
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

class MyStatelessWidgetStackAlignPostioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: _stack(),
          ),
        ),
      ),
    );
  }

  Widget _stack() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey[300],
      child: Stack(
        // alignment: AlignmentDirectional.center,
        // alignment: Alignment(-2, 2),
        // children: <Widget>[
        //   Container(
        //     height: 200,
        //     width: 200,
        //     color: Colors.red,
        //   ),
        //   Container(
        //     height: 180,
        //     width: 180,
        //     color: Colors.green,
        //   ),
        //   Container(
        //     height: 160,
        //     width: 160,
        //     color: Colors.blue,
        //   ),
        //   Container(
        //     height: 140,
        //     width: 140,
        //     color: Colors.amber[700],
        //   ),
        // ],

        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 180,
              width: 180,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 160,
              width: 160,
              color: Colors.blue,
            ),
          ),
          Positioned(
            right: -90,
            top: -90,
            child: Container(
              height: 140,
              width: 140,
              color: Colors.amber[700],
            ),
          ),
        ],
      ),
    );
  }
}

class MyStatelessWidgetAspectRatioCardWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // child: _aspectRatio(),
          // child: _card(),
          child: _warp(),
        ),
      ),
    );
  }

  Widget _aspectRatio() {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      child: AspectRatio(
        aspectRatio: 1 / 2,
        child: Container(
          color: Colors.amber[700],
        ),
      ),
    );
  }

  Widget _card() {
    return Card(
      // đổ bóng
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.alarm),
            title: Text("Flutter"),
            subtitle: Text("Đây là card view listTitle"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox.fromSize(
                size: Size(40, 40), // button width and height
                child: ClipOval(
                  child: Material(
                    color: Colors.orange, // button color
                    child: InkWell(
                      splashColor: Colors.red, // splash color
                      onTap: () {
                        log("message");
                      }, // button pressed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.alarm_add,
                            color: Colors.white,
                          ), // icon
                          Text(
                            "Add",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ), // text
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              SizedBox.fromSize(
                size: Size(40, 40), // button width and height
                child: ClipOval(
                  child: Material(
                    color: Colors.orange[300], // button color
                    child: InkWell(
                      splashColor: Colors.red, // splash color
                      onTap: () {
                        log("message");
                      }, // button pressed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ), // icon
                          Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ), // text
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: Text('BUY TICKETS'),
              ),
              SizedBox(width: 8),
            ],
          )
        ],
      ),
    );
  }

  Widget _warp() {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 10, // giãn khoảng cách
      runSpacing: 0, // giãn dòng
      alignment: WrapAlignment.center, // căn giữa
      children: <Widget>[
        Chip(
          label: Text('Title 1'),
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
                child: Image.asset('lib/src/assets/images/logo3x.png')),
          ),
        ),
        Chip(
          label: Text('Title 1'),
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
                child: Image.asset('lib/src/assets/images/logo3x.png')),
          ),
        ),
        Chip(
          label: Text('Title 1'),
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
                child: Image.asset('lib/src/assets/images/logo3x.png')),
          ),
        ),
        Chip(
          label: Text('Title 1'),
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
                child: Image.asset('lib/src/assets/images/logo3x.png')),
          ),
        ),
        Chip(
          label: Text('Title 1'),
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
                child: Image.asset('lib/src/assets/images/logo3x.png')),
          ),
        ),
        Chip(
          label: Text('Title 1'),
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
                child: Image.asset('lib/src/assets/images/logo3x.png')),
          ),
        ),
      ],
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyStatefulWidget> {
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //get external data
    _getThingsOnStartup().then((value) => print("Async finished"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count Scope'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                    print(count);
                  });
                },
                child: Text('On Press'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _getThingsOnStartup() async {
    await Future.delayed(Duration(seconds: 2));
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CustomeBottomNavigationBar(),
    );
  }
}

class CustomeBottomNavigationBar extends StatefulWidget {
  CustomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomeBottomNavigationBar> createState() =>
      _CustomeBottomNavigationBarState();
}

class _CustomeBottomNavigationBarState
    extends State<CustomeBottomNavigationBar> {
  int _typeMenuIndex = 0;
  void _onItemTappedBottom(int index) {
    setState(() {
      _typeMenuIndex = index;
    });
  }

  List<Widget> _page = [
    TextField(),
    Text('Business Page'),
    Text('School Page'),
    Text('Settings Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: _page[_typeMenuIndex],
        child: IndexedStack(
          alignment: AlignmentDirectional.center,
          index: _typeMenuIndex,
          children: [
            TextField(),
            Text('Business Page'),
            Text('School Page'),
            Text('Settings Page'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // selectedItemColor: Colors.amber,
        currentIndex: _typeMenuIndex,
        onTap: _onItemTappedBottom,
        // backgroundColor: Colors.blueGrey,
        iconSize: 20,
        selectedFontSize: 12,
        // mouseCursor: SystemMouseCursors.grab,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Colors.red[600]),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              label: "Business",
              backgroundColor: Colors.blue[500]),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "School",
              backgroundColor: Colors.yellow[800]),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings",
              backgroundColor: Colors.grey[500]),
        ],
      ),
    );
  }
}

class MyPageNavigationTransition extends StatelessWidget {
  const MyPageNavigationTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              // MaterialPageRoute(
              //   builder: (context) {
              //     return SecondPage();
              //   },
              // ),
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => SecondPage(),
                transitionsBuilder: (c, a1, a2, child) => FadeTransition(
                  opacity: a1,
                  child: child,
                ),
                transitionDuration: Duration(seconds: 1),
              ),
            );
          },
          child: Text('First Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.of(context).pop();
          },
          child: Text('Second Page'),
        ),
      ),
    );
  }
}
