import 'package:flutter/material.dart';
import 'package:decimal/decimal.dart';

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
  //とりあえずやってみよう。ウィジェットのビルドは最後に記載するとわかりやすい。

  var _message;

  //入力項目のコントローラ
  final controllerCurrentBalance   = TextEditingController();
  final controllerMonthlyAddition  = TextEditingController();
  final controllerInterestRateYear = TextEditingController();
  final controllerPeriodYear       = TextEditingController();



  @override
  void initState() {
    _message = 'OK';
    super.initState();
  }

  void buttonPressed() {
    //big decimal で受け取り
    var inputCurrentBalance   = Decimal.parse(controllerCurrentBalance.text);
    var inputMonthlyAddition  = Decimal.parse(controllerMonthlyAddition.text);
    var inputInterestRateYear = Decimal.parse(controllerInterestRateYear.text);
    var inputPeriodYear       = Decimal.parse(controllerPeriodYear.text);


    setState(() {
      _message = controllerCurrentBalance.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('iCC 複利計算App',
            style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto")),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 600.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.7,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
              color: Colors.white70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 25.0, 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "元本（万円）",
                        hintText: "数値で入力してください",
                        icon: Icon(Icons.attach_money),
                        fillColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      controller: controllerCurrentBalance,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 5.0, 25.0, 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "積立金額（万円）",
                        hintText: "数値で入力してください",
                        icon: Icon(Icons.add_circle_outline),
                        fillColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      controller: controllerMonthlyAddition,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 5.0, 25.0, 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "年利（％）",
                        hintText: "数値で入力してください",
                        icon: Icon(Icons.cached),
                        fillColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      controller: controllerInterestRateYear,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 5.0, 25.0, 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "投資期間（年）",
                        hintText: "数値で入力してください",
                        icon: Icon(Icons.schedule),
                        fillColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      controller: controllerPeriodYear,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                    child: FlatButton(
                      padding: EdgeInsets.all(15.0),
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Text(
                        "複利計算",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color: Colors.white),
                      ),
                      onPressed: buttonPressed,
                    ),
                  ),

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
}
