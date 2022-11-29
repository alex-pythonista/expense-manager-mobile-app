import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(EMApp());

class EMApp extends StatelessWidget {
  // const EMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Your Expense Manager",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: "t1",
      title: "Nike Shoes",
      amount: 80.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Lunch",
      amount: 30.67,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Mond",
      amount: 130,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Expense Manager"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Chart"),
            ),
          ),
          Card(
            color: Colors.red,
            elevation: 5,
            child: Text("List of transaction"),
          )
        ],
      ),
    );
  }
}
