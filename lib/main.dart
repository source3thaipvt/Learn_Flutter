import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/data/listData.dart';

void main() {
  runApp(MyTextField());
}

// giới thiệu về Widget Container, Text
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

// giới thiệu về Image network & no network
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

// giới thiệu về Listview
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

// giới thiệu về GirdView
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

// Giới thiệu về Widget Layout || Row || Column || Expanded || Flexible
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

// giới thiệu về Widget Stack  || Align  ||  Positioned  < Styles >
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

// giới thiệu về Widget AspectRatio  ||  Card  || Warp
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

// giới thiệu về Stateful là gì: setState value sẽ cập nhập state Widget
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

// giới thiệu về BottomNavigationBar điều hướng page
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

// giới thiệu về NavigationTransition <push|pop}> điều hướng page có hiệu ứng
// giới thiệu về Pass Arguments cách truyền data < object >
// giới thiệu về Router <pushNamed||pushReplacementNamed||pushNamedAndRemoveUntil>
// đẩy đến màn || 1 -> 2 Replacement -> 3 (pop sẽ về màn 1) || 1 -> 2 -> 3 RemoveUntil -> 4 (pop sẽ về màn 1 logout)
class MyPageNavigationTransition extends StatelessWidget {
  const MyPageNavigationTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: (settings) {
      //   final args = settings.arguments;
      //   if (settings.name == '/second') {
      //     return PageRouteBuilder(
      //       pageBuilder: (_, __, ___) => SecondPage(args),
      //       transitionsBuilder: (_, a, __, c) => FadeTransition(
      //         opacity: a,
      //         child: c,
      //       ),
      //     );
      //   }
      // },
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/fourth': (context) => FourthPage(),
      },
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, this.titles, this.count}) : super(key: key);
  final titles, count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      backgroundColor: Colors.amber[700],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //   // MaterialPageRoute(
            //   //   builder: (context) {
            //   //     return SecondPage();
            //   //   },
            //   // ),
            //   PageRouteBuilder(
            //     pageBuilder: (c, a1, a2) => SecondPage(),
            //     // Animation fadeTransition
            //     transitionsBuilder: (c, a1, a2, child) => FadeTransition(
            //       opacity: a1,
            //       child: child,
            //     ),
            //     // transitionDuration: Duration(seconds: 1),
            //   ),
            // );
            Navigator.of(context)
                .pushNamed('/second', arguments: 'This is sec arg');
          },
          child: Text('First Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final title;
  SecondPage({this.title = "Null Pages"});
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arg as String),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/third');
            // Navigator.of(context).pushReplacementNamed('/third'); // thuc hiện push đến màn third, khi pop ở màn third sẽ thực hiện pop của màn second
          },
          child: Text('Second Page'),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("null"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.of(context).pushNamedAndRemoveUntil(
                // chưa hiểu pushNamedAndRemoveUntil
                '/fourth',
                ModalRoute.withName('/first'));
          },
          child: Text('Third Page'),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.of(context).pop();
          },
          child: Text('Fourth Page'),
        ),
      ),
    );
  }
}

// giới thiệu về Widget Appbar tĩnh
class MyWidgetAppbarSliverAppbar extends StatelessWidget {
  const MyWidgetAppbarSliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: AppBarPageFirst(),
      home: MyWidgetAppbarSliverAppbarStatefulWidget(),
    );
  }
}

class AppBarPageFirst extends StatelessWidget {
  const AppBarPageFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 100,
        elevation: 10, // bóng mờ
        // toolbarOpacity: 0.5, // làm mở tool bar
        toolbarHeight: 40,
        backgroundColor: Colors.amber[700],
        leading: Container(
          color: Colors.red,
        ),
        title: Text('First Page'),
        centerTitle: true,
        actions: [
          Icon(Icons.alarm),
          SizedBox(width: 10),
          Icon(Icons.more),
          SizedBox(width: 10),
          Icon(Icons.settings),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Next Page'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AppBarPageSecond(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AppBarPageSecond extends StatelessWidget {
  const AppBarPageSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // hide icon arrow back pop
      ),
      body: Center(
        child: Text("Second Page"),
      ),
    );
  }
}

// giới thiệu về Widget Appbar động, có hiệu ứng
class MyWidgetAppbarSliverAppbarStatefulWidget extends StatefulWidget {
  MyWidgetAppbarSliverAppbarStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyWidgetAppbarSliverAppbarStatefulWidget> createState() =>
      _MyWidgetAppbarSliverAppbarStatefulWidgetState();
}

class _MyWidgetAppbarSliverAppbarStatefulWidgetState
    extends State<MyWidgetAppbarSliverAppbarStatefulWidget> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  bool _stretch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            stretch: _stretch,
            expandedHeight: 120.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle
              ],
            ),
          ),
          // const SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 20,
          //     child: Center(
          //       child: Text('Scroll to see the SliverAppBar in effect.'),
          //     ),
          //   ),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('${index + 1}', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('pinned'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _pinned = val;
                      });
                    },
                    value: _pinned,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('snap'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _snap = val;
                        // Snapping only applies when the app bar is floating.
                        _floating = _floating || _snap;
                      });
                    },
                    value: _snap,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('floating'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _floating = val;
                        _snap = _snap && _floating;
                      });
                    },
                    value: _floating,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('strech'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _stretch = val;
                      });
                    },
                    value: _stretch,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// giới thiệu về Widget Tabbar tĩnh Stateless
class MyWidgetTabbar extends StatelessWidget {
  const MyWidgetTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar Demo'),
            bottom: TabBar(
              isScrollable: true, // bat scroll neu qua dai "lenght >5"
              indicatorColor: Colors.amber[700],
              // indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.white,
              indicatorWeight: 5,
              // indicator: BoxDecoration(
              //   borderRadius: BorderRadius.circular(30),
              // ),
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('page 1'),
            ),
            Center(
              child: Text('page 2'),
            ),
            Center(
              child: Text('page 2'),
            ),
            Center(
              child: Text('page 1'),
            ),
            Center(
              child: Text('page 2'),
            ),
            Center(
              child: Text('page 2'),
            ),
            Center(
              child: Text('page 1'),
            ),
            Center(
              child: Text('page 2'),
            ),
            Center(
              child: Text('page 2'),
            ),
          ]),
        ),
      ),
    );
  }
}

// giới thiệu về Widget Tabbar động Stateful lắng nghe sự kiện từ Tabbar
class MyWidgetTabbarStatefulWidget extends StatefulWidget {
  MyWidgetTabbarStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyWidgetTabbarStatefulWidget> createState() =>
      _MyWidgetTabbarStatefulWidgetState();
}

class _MyWidgetTabbarStatefulWidgetState
    extends State<MyWidgetTabbarStatefulWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _currentIndex = _tabController.index;
          print(_currentIndex);
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab bar View Stateful'),
          bottom: TabBar(
            // isScrollable: true, // bat scroll neu qua dai "lenght >5"
            indicatorColor: Colors.amber[700],
            // indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorWeight: 5,
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
              Tab(icon: Icon(Icons.directions_car), text: 'Car'),
              Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Bike')),
            Center(child: Text('Car')),
            Center(child: Text('Transit')),
          ],
        ),
      ),
    );
  }
}

// giới thiệu về Widget Drawer & Drawer Header
class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawHomePage(),
    );
  }
}

class DrawHomePage extends StatelessWidget {
  const DrawHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        // endDrawer: Drawer( // menu drawer end tool bar
        child: Container(
          color: Colors.green[100],
          child: Column(
            // padding: EdgeInsets.zero,
            children: [
              Container(
                // width: double.infinity,
                // child: DrawerHeader(
                //   decoration: BoxDecoration(color: Colors.purple),
                //   child: Container(
                //     color: Colors.grey,
                //     child: Text("Drawer Header"),
                //   ),
                // ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.amber),
                  accountName: Text('Test'),
                  accountEmail: Text('testemail@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('lib/src/assets/images/logo3x.png'),
                    // NetworkImage(
                    // "https://cdn.nguyenkimmall.com/images/detailed/555/may-anh-cho-nguoi-moi.jpg"),
                  ),
                ),
              ),
              ListTile(
                title: Text('item 1'),
                onTap: () {
                  print("item 1");
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('item 2'),
                onTap: () {
                  print("item 2");
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('item 3'),
                onTap: () {
                  print("item 3");
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        // openDrawer = button ElevatedButton Scaffold.of(context).openDrawer();
        child: Builder(builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: (() {
                Scaffold.of(context).openDrawer();
              }),
              child: Text('Drawer Home'),
            ),
          );
        }),
      ),
    );
  }
}

// giới thiệu về Widget ElevatedButton || TextButton || OutlinedButton < styles >

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.cancel),
                  label: Text("Icon Cancel"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[200],
                      onPrimary: Colors.yellow,
                      // onSurface: Colors.red,
                      minimumSize: Size(150, 100),
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'DancingScript',
                      ),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(15),
                      //   side: BorderSide(color: Colors.red),
                      // ),
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                    onPressed: () {},
                    // onPressed: null,
                    child: Text("Elevated Button")
                    // Container(
                    //   width: 150,
                    //   height: 50,
                    //   child: ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //         primary: Colors.red[200],
                    //         onPrimary: Colors.yellow,
                    //         // onSurface: Colors.red,
                    //         // minimumSize: Size(150, 50),
                    //       ),
                    //       onPressed: () {},
                    //       // onPressed: null,
                    //       child: Text("Elevated Button")),
                    ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text("Text Button"),
                  style: TextButton.styleFrom(
                    primary: Colors.red[200],
                    // elevation: 5,
                    // onSurface: Colors.red,
                    minimumSize: Size(150, 50),
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Outlined Button"),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.purple[200],
                    // elevation: 5,
                    // onSurface: Colors.red,
                    minimumSize: Size(150, 50),
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DancingScript',
                    ),
                    side: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(100, 100)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                        foregroundColor: MaterialStateProperty.all(Colors.blue),
                        elevation: MaterialStateProperty.all(20),
                        shape: MaterialStateProperty.all(CircleBorder(
                          side: BorderSide(color: Colors.red),
                        ))),
                    onPressed: () {},
                    child: Text("Elevated Button")),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

// giới thiệu về Widget FloatingActionButton <styles>
class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFloatingActionButton'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
            foregroundColor: Colors.amber,
            mini: true, // widht height nho nhat
            elevation: 4,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'person',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   icon: Icon(Icons.favorite, color: Colors.pink[200]),
        //   label: Text('Favoriate'),
        // ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Text('hello'),
            ),
          ),
        ),
      ),
    );
  }
}

// giới thiệu về Widget Text Field <Styles>
class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTextFieldStateful(),
    );
  }
}

class MyTextFieldStateful extends StatefulWidget {
  MyTextFieldStateful({Key? key}) : super(key: key);

  @override
  State<MyTextFieldStateful> createState() => _MyTextFieldStatefulState();
}

class _MyTextFieldStatefulState extends State<MyTextFieldStateful> {
  late final TextEditingController _textEditingController;
  late final TextEditingController _text2EditingController;
  var str = '';
  FocusNode str1 = FocusNode();
  FocusNode str2 = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController(text: '');
    _text2EditingController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    _text2EditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyTextField')),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                    controller: _textEditingController,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    controller: _text2EditingController,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'String',
                    ),
                    onChanged: (value) => {
                      str = value,
                    },
                    focusNode: str1,
                    // autofocus: true, //khi mở đến screen này sẽ tập trung vào textFeild có autofocus true
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    // decoration: InputDecoration.collapsed(hintText: "String 2"),
                    decoration: InputDecoration(
                        hintText: 'String 2',
                        labelText: 'String 2',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.ac_unit)),
                    focusNode: str2,
                    // keyboardType: TextInputType.text,
                    // autocorrect: true, // tính năng tự sửa default true
                    // autofocus: true, //khi mở đến screen này sẽ tập trung vào textFeild có autofocus true
                    // textCapitalization: TextCapitalization.characters, // thực thi in hoa chữ auto
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.orange),
                    maxLines: 4,
                    // maxLength: 20,
                    obscureText: false, // hide text password
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.skip_next),
        onPressed: () {
          FocusScope.of(context).requestFocus(
              str2); // thực thi tương tựu autofocus trỏ đến requestFocus(str2)

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MySecondPageTextField(
                  _textEditingController.text,
                  _text2EditingController.text,
                  str),
            ),
          );
        },
      ),
    );
  }
}

class MySecondPageTextField extends StatelessWidget {
  late final String userName, passWord, str;
  MySecondPageTextField(this.userName, this.passWord, this.str);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello $userName'),
        ),
        body: Center(
            child:
                Text('Username: $userName \n\nPassword: $passWord \n\n$str')),
      ),
    );
  }
}
