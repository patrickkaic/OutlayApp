// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlayApp'),
      ),
      body: Center(
        child: Text('Versão inicial'),
      ),
    );
  }
}
