// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:outlay_app/models/transactions.dart';

main() => runApp(OutlayApp());

class OutlayApp extends StatelessWidget {
  const OutlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Trasnsactions(
      id: 't1',
      title: 'novo tenis',
      value: 310,
      date: DateTime.now(),
    ),
    Trasnsactions(
      id: 't2',
      title: 'energia',
      value: 100,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlayApp'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Column(
              children: _transactions.map((tr) {
            return Card(
              child: Text(tr.title),
            );
          }).toList()),
        ],
      ),
    );
  }
}
