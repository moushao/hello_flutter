import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return rowWidget();
  }

  MaterialApp rowWidget() {
    return MaterialApp(
      title: "Row Widget Demo",
      home: Scaffold(
        appBar: new AppBar(title: new Text("水平方向布局"),),
        body: new Row(
          children: <Widget>[
            Expanded(child: new RaisedButton(onPressed: () {},
              color: Colors.orangeAccent,
              child: new Text("orangeAccent"),),),
            Expanded(child: new RaisedButton(onPressed: () {},
              color: Colors.lightBlue,
              child: new Text("lightBlue"),),),
            Expanded(child: new RaisedButton(onPressed: () {},
              color: Colors.deepPurpleAccent,
              child: new Text("deepPurpleAccent"),),),
          ],
        )
        ,
      )
      ,
    );
  }
}