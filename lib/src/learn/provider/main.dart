import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/change_notifier_provider.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/counter_notifier.dart';
import 'package:hello_world/src/learn/provider/inherited_widget/inherited_example.dart';
import 'package:hello_world/src/learn/provider/provider_widget/counter.dart';
import 'package:hello_world/src/learn/provider/provider_widget/provider_example.dart';
import 'package:hello_world/src/learn/provider/stateful_example_widget/stateful_example.dart';
import 'package:hello_world/src/learn/provider/stateful_parent_widget/stateful_parent.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyAppProvider());
}

class MyAppProvider extends StatelessWidget {
  const MyAppProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home:
    // StatefulExample(),

    // StatefulParent(),

    // InheritedExample(),

    //     Provider<Counter>(
    //   //Tiện ích provider này không cập nhập UI
    //   create: (_) => Counter(),
    //   child: const ProviderExample(),
    // ),

    // ChangeNotifierProvider<CounterNotifier>(
    //     // Tiện ích provider này có cập nhập UI
    //     create: (_) => CounterNotifier(),
    //     child: const ChangeNotifierProviderExample()),

    // );

    return ChangeNotifierProvider(
      // Cách để các widget page child có thể truy cập vào CounterNotifier(), bọc ngoài <Provider>
      // Cách sử dụng chung 1 model ChangeNotifier
      create: (_) => CounterNotifier(),
      child: const MaterialApp(
        home: ChangeNotifierProviderExample(),
      ),
    );
  }
}
