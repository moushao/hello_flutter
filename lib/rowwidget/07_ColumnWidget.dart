import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myColumnWidget();
  }

  MaterialApp myColumnWidget() {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.5),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage("http://h.hiphotos.baidu"
              ".com/image/h%3D300/sign=7cd08c6c3712b31bd86ccb29b6183674/730e0cf3d7ca7bcb051bd704b0096b63f624a8bc.jpg"),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text("hdahaha"),
        )
      ],
    );
    return MaterialApp(
      title: "ColumnWidget Demo",
      home: Scaffold(
        appBar: new AppBar(title: new Text("锤子方向布局"),),
        body: Center(child: stack,),
      ),
    );
  }
}