import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/stream_provider/data.dart';
import 'package:provider/provider.dart';

class StreamProviderExample extends StatelessWidget {
  const StreamProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Stream Provider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ModelStream>(
              builder: (_, model, __) {
                return Text('${model.number}');
              },
            ),
            SizedBox(height: 20),
            Consumer<ModelStream>(
              builder: (_, model, __) {
                return ElevatedButton(
                  onPressed: model.increase,
                  child: Text('Increase'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
