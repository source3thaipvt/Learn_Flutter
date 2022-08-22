import 'package:flutter/foundation.dart';
import 'package:hello_world/src/learn/provider/proxy_provider/credit_card.dart';

class Customer {
  CreditCard? creditCard; // tham chiếu đến class CreditCard
  int numOfCreditCard = 1;

  Customer(
      {this.creditCard}); // sử dụng constructor để chuyển đổi CreditCard sang quyền sử dụng

  void deposit(int amount) {
    creditCard?.deposit(amount);
  }

  void withdraw(int amount) {
    creditCard?.withdraw(amount);
  }

  void applyNewCreditCard() {
    numOfCreditCard++;
    debugPrint('numOfCreditCard: $numOfCreditCard');
  }
}
