import 'package:flutter/cupertino.dart';

class CreditCard with ChangeNotifier {
  int amount = 0;
  // tiền gửi vào ngân hàng
  void deposit(int amount) {
    this.amount += amount;
    notifyListeners();
  }

  // rút tiền ra khỏi ngân hàng
  void withdraw(int amount) {
    if (this.amount < 0 || this.amount == 0) {
      this.amount = 0;
      debugPrint('Ban khong con tien de rut');
    } else {
      this.amount < amount ? this.amount = 0 : this.amount -= amount;
    }
    notifyListeners();
  }
}
