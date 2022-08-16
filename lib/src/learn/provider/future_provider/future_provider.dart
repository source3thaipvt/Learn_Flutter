import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/future_provider/data.dart';
import 'package:provider/provider.dart';

class FutureProviderExample extends StatelessWidget {
  const FutureProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Future Provider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Data>(
              builder: (_, data, __) {
                return Text(data.data);
              },
            ),
            SizedBox(height: 20),
            Consumer<Data>(
              builder: (_, data, __) {
                return ElevatedButton(
                  onPressed: data.loadDataByClick,
                  child: Text('Load Data'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
