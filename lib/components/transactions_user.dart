// ignore_for_file: unused_element

import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transactions_form.dart';
import '../models/transactions.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Trasnsactions(
      id: 't1',
      title: 'Novo tênis',
      value: 310.99,
      date: DateTime.now(),
    ),
    Trasnsactions(
      id: 't2',
      title: 'Conta luz',
      value: 100.88,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Trasnsactions(
      id: Random().nextBool().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
