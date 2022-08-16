import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/provider_widget/counter.dart';
import 'package:provider/provider.dart';

class ProviderExample extends StatelessWidget {
  const ProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Examples'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(
            builder: (_, counter, __) {
              return Text('${counter.number}');
            },
          ),
          Consumer<Counter>(
            builder: (_, counter, __) {
              return ElevatedButton(
                  onPressed: counter.increase, child: Text('Increase'));
            },
          ),
          Consumer<Counter>(
            builder: (_, counter, __) {
              return ElevatedButton(
                  onPressed: counter.decrease, child: Text('Decrease'));
            },
          ),
        ],
      )),
    );
  }
}
