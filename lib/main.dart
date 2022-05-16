import 'package:flutter/material.dart';
import 'package:flutter_personal_expense_app/transaction.dart';
import './transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'grocery',
      amount: 24.12,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text("Card1"),
                elevation: 5,
              ),
            ),
            Column(
              // 컬럼에 transactions 리스트에 있는 transaction 을 맵핑후 .toList()로 리스트 생성
              children: transactions.map((tx) {
                return Card(
                  child: Row(children: <Widget>[
                    Container(child: Text(tx.amount.toString()),),
                    Column(children: <Widget>[
                      Text(tx.title as String),
                      Text(tx.date.toString()),
                     ],)

                  ],)
                );
              }).toList(),
            )
          ],

          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
