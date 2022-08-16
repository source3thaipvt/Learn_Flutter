import 'package:hello_world/src/learn/provider/future_provider/data.dart';

Future<Data> loadData() async {
  await Future.delayed(const Duration(seconds: 5));
  return Data("New data from server,\ntriggered by future provider sau 5s");
}
