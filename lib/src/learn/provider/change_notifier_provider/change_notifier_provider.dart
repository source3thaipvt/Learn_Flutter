import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/counter_notifier.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/next_page.dart';
import 'package:hello_world/src/learn/provider/provider_widget/counter.dart';
import 'package:provider/provider.dart';

class ChangeNotifierProviderExample extends StatelessWidget {
  const ChangeNotifierProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cách để không xây dựng lại UI, tức là không thay đổi UI khi state thay đổi
    // listen true: sẽ lắng nghe state thay đổi, cách viết gọn hơn nếu không sử dụng Consumer
    final counterNotifierNoChange =
        Provider.of<CounterNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierProvider Examples'),
      ),
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
          ElevatedButton(
              onPressed: counterNotifierNoChange.decrease,
              child: Text('Decrease ${counterNotifierNoChange.number}')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const NextPage(),
                ));
              },
              child: Text('Next Page')),
        ],
      )),
    );
  }
}
