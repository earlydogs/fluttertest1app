import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  final title = 'iCC 複利計算';

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(
          title: this.title,
      ),
    );
  }
}
class MyHomePage extends StatefulWidget{


  MyHomePage({this.title}): super();

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage>{

  String _message;

  @override
  void initState(){
    super.initState();
    _message = 'Hello! Flutter!';
  }

  void _setMessage(){
    setState(() {
      _message = 'Yeah!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Text(
        _message,
        style: TextStyle(fontSize: 32.0),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _setMessage,
        tooltip: 'set message',
        child: Icon(Icons.star),
      ),

    );
  }
}
