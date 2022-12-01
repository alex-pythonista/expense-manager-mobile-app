import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

  // String? titleInput;
  // String? amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Expense Manager"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Chart"),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: "Title"),
                    controller: titleController,
                    // onChanged: (val) => titleInput = val,
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: "Amount"),
                    controller: amountController,
                    // onChanged: ((value) => amountInput = value),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(titleController.text);
                    },
                    child: const Text("Add Transaction"),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "A: ${tx.amount.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('dd-MM-yyyy').format(tx.date),
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
