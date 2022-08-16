import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/counter_notifier.dart';
import 'package:provider/provider.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterNotifier>(
              builder: (_, counter, __) {
                return Text('${counter.number} Vạn câu hỏi vì sao');
              },
            ),
            Consumer<CounterNotifier>(
              builder: (_, counter, __) {
                return ElevatedButton(
                    onPressed: counter.increase,
                    child: Text('Increase ${counter.number}'));
              },
            ),
            Consumer<CounterNotifier>(
              builder: (_, counter, __) {
                return ElevatedButton(
                    onPressed: counter.decrease,
                    child: Text('Decrease ${counter.number}'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
