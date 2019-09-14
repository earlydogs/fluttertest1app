import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _message;
  final controller = TextEditingController();
  final controllerTwo = TextEditingController();

  @override
  void initState() {
    _message = 'OK';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 450.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      _message,
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.pink,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "元本（万円）",
                        hintText: "100",
                        icon: Icon(Icons.person_outline),
                        fillColor: Colors.grey,
                      ),
                      controller: controller,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.pink,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "積立金額（万円）",
                        hintText: "5",
                        icon: Icon(Icons.person_outline),
                        fillColor: Colors.blue,
                      ),
                      controller: controllerTwo,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.pink,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.pink,
                    child: Text(
                      "push here",
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    onPressed: buttonPressed,
                  ),
                ],
              )),
          Container(
            color: Colors.green,
            child: Text(
              "Two",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Text(
              "Three",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
        ],
      ),
    );
  }

  void buttonPressed() {
    setState(() {
      _message = controller.text;
    });
  }
}
