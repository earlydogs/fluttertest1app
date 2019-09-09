import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('iCC 複利計算'),
        ),
        body: Text(
          'hello, Flutter World!!',
          style: TextStyle(fontSize: 32.0),
        ),
      ),

    );
  }
}
