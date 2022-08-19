import 'package:flutter/cupertino.dart';
import 'package:hello_world/src/learn/provider/stream_provider/data.dart';

Stream<ModelStream> loadStream() {
  return Stream<ModelStream>.periodic(
    const Duration(seconds: 1),
    (value) => ModelStream(number: value),
  ).take(15);
}
