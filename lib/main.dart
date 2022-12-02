import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'models/transaction.dart';
// import './widgets/transaction_list.dart';
// import './widgets/new_transaction.dart';

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
  // final List<Transaction> transactions = [];

  // String? titleInput;
  // String? amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Expense Manager"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          UserTransactions()
        ],
      ),
    );
  }
}
