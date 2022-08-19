import 'package:flutter/cupertino.dart';

class ModelStream {
  int number;
  ModelStream({required this.number});

  void increase() {
    number++;
    debugPrint('$number');
  }
}
