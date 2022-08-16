import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

class CounterNotifier with ChangeNotifier {
  int number = 0;
  void increase() {
    number++;
    notifyListeners();
  }

  void decrease() {
    number--;
    notifyListeners();
  }
}
