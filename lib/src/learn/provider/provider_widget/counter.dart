import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

class Counter {
  int number = 0;
  void increase() {
    number++;
    debugPrint('$number debug');
  }

  void decrease() {
    number--;
    debugPrint('$number debug');
  }
}
