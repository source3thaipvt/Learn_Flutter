import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/src/learn/provider/proxy_provider/credit_card.dart';
import 'package:hello_world/src/learn/provider/proxy_provider/customer.dart';
import 'package:hello_world/src/learn/provider/stream_provider/data.dart';
import 'package:provider/provider.dart';

class ProxyProviderExample extends StatelessWidget {
  const ProxyProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Proxy Provider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CreditCard>(
              builder: (_, creditCard, __) {
                return Text('amount: ${creditCard.amount}');
              },
            ),
            SizedBox(height: 20),
            Consumer<CreditCard>(
              builder: (_, creditCard, __) {
                return ElevatedButton(
                  onPressed: () => creditCard.deposit(10),
                  child: const Text('Deposit 10'),
                );
              },
            ),
            SizedBox(height: 20),
            Consumer<Customer>(
              builder: (_, customer, __) {
                return ElevatedButton(
                  onPressed: () => customer.withdraw(20),
                  child: const Text('Withdraw 20'),
                );
              },
            ),
            SizedBox(height: 20),
            Consumer<Customer>(
              builder: (_, customer, __) {
                return Text('numberOfCreditCard: ${customer.numOfCreditCard}');
              },
            ),
            SizedBox(height: 20),
            Consumer<Customer>(
              builder: (_, customer, __) {
                return ElevatedButton(
                  onPressed: () => customer.applyNewCreditCard(),
                  child: const Text('Apply'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
