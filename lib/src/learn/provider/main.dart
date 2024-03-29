import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/change_notifier_provider.dart';
import 'package:hello_world/src/learn/provider/change_notifier_provider/counter_notifier.dart';
import 'package:hello_world/src/learn/provider/future_provider/data_future.dart';
import 'package:hello_world/src/learn/provider/future_provider/future_provider.dart';
import 'package:hello_world/src/learn/provider/inherited_widget/inherited_example.dart';
import 'package:hello_world/src/learn/provider/multi_provider/multi_provider_example.dart';
import 'package:hello_world/src/learn/provider/provider_widget/counter.dart';
import 'package:hello_world/src/learn/provider/provider_widget/provider_example.dart';
import 'package:hello_world/src/learn/provider/proxy_provider/credit_card.dart';
import 'package:hello_world/src/learn/provider/proxy_provider/customer.dart';
import 'package:hello_world/src/learn/provider/proxy_provider/proxy_provider_example.dart';
import 'package:hello_world/src/learn/provider/stateful_example_widget/stateful_example.dart';
import 'package:hello_world/src/learn/provider/stateful_parent_widget/stateful_parent.dart';
import 'package:hello_world/src/learn/provider/stream_provider/data.dart';
import 'package:hello_world/src/learn/provider/stream_provider/data_stream.dart';
import 'package:hello_world/src/learn/provider/stream_provider/stream_provider.dart';
import 'package:provider/provider.dart';

import 'future_provider/data.dart';

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

    // return ChangeNotifierProvider(
    //   // Cách để các widget page child có thể truy cập vào CounterNotifier(), bọc ngoài <Provider>
    //   // Cách sử dụng chung 1 model ChangeNotifier
    //   create: (_) => CounterNotifier(),
    //   child: const MaterialApp(
    //     home: ChangeNotifierProviderExample(),
    //   ),
    // );

    // Phương thức thay đổi state trong tương lai
    // return FutureProvider<Data>(
    //     //Phương pháp này không thay đổi UI khi click vào load Data, nếu muốn thay đổi UI dùng ChangeNotifierProvider
    //     create: (_) =>
    //         loadData(), //once only, chạy loadData chỉ đúng 1 lần, đồng thời thay đổi UI
    //     initialData: Data("Initial data"),
    //     child: const MaterialApp(
    //       home: FutureProviderExample(),
    //     ));

    // // Phương thức thay đổi state trong tương lai
    // return StreamProvider<ModelStream>(
    //     //Phương pháp này không thay đổi UI khi click vào Increase, nếu muốn thay đổi UI dùng ChangeNotifierProvider
    //     create: (_) =>
    //         loadStream(), //once only, chạy loadData chỉ đúng 1 lần, đồng thời thay đổi UI
    //     initialData: ModelStream(number: 0),
    //     child: const MaterialApp(
    //       home: StreamProviderExample(),
    //     ));

    // Cách 1 Multiple Provider lồng

    // return ChangeNotifierProvider<CounterNotifier>(
    //   create: (_) => CounterNotifier(),
    //   child: FutureProvider<Data>(
    //     create: (_) => loadData(),
    //     initialData: Data("Initial data"),
    //     child: StreamProvider<ModelStream>(
    //         create: (_) =>
    //             loadStream(), //once only, chạy loadData chỉ đúng 1 lần, đồng thời thay đổi UI
    //         initialData: ModelStream(number: 0),
    //         child: const MaterialApp(
    //           // home: ChangeNotifierProviderExample(),
    //           // home: FutureProviderExample(),
    //           home: StreamProviderExample(),
    //         )),
    //   ),
    // );

    // Cách 2 Multiple Provider dùng tool

    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider<CounterNotifier>(
    //       create: (_) => CounterNotifier(),
    //     ),
    //     FutureProvider<Data>(
    //       initialData: Data("Initial data"),
    //       create: (_) => loadData(),
    //     ),
    //     StreamProvider<ModelStream>(
    //       initialData: ModelStream(number: 0),
    //       create: (_) => loadStream(),
    //     ),
    //   ],
    //   child: const MaterialApp(
    //     // home: ChangeNotifierProviderExample(),
    //     // home: FutureProviderExample(),
    //     // home: StreamProviderExample(),
    //     home: MultiProviderExample(),
    //   ),
    // );

    // Proxy Provider không cập nhập thay đổi ui

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CreditCard>(
          create: (_) => CreditCard(),
        ),
        ProxyProvider<CreditCard, Customer>(
          update: (_, creditCard, customer) => Customer(creditCard: creditCard),
        ),
      ],
      child: const MaterialApp(
        home: ProxyProviderExample(),
      ),
    );
  }
}
