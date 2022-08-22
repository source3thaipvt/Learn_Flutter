import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/counter_notifier.dart';
import 'package:hello_world/src/learn/provider/future_provider/data.dart';
import 'package:hello_world/src/learn/provider/stream_provider/data.dart';
import 'package:provider/provider.dart';

class MultiProviderExample extends StatelessWidget {
  const MultiProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Multiple Provider Example')),
      body: Center(
        child: Consumer3<CounterNotifier, Data, ModelStream>(
          builder: (_, counter, data, model, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${counter.number}'),
                SizedBox(height: 20),
                Text('${data.data}'),
                SizedBox(height: 20),
                Text('${model.number}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
