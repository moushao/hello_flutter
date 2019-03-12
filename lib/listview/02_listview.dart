import 'package:flutter/material.dart';

void main() =>
    runApp(myApp(
        items: new List<String>.generate(100, (i) => "item $i")
    ));

class myApp extends StatelessWidget {
  final List<String> items;

  myApp({Key key, @required this.items}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return myListViewWidget();
  }

  MaterialApp myListViewWidget() {
    return MaterialApp(
      title: "listView",
      home: Scaffold(
        appBar: new AppBar(title: new Text("ListView_02"),),
        body: Center(
          child: Container(
            height: 200.0,
            child: MyListView(),
          ),
        ),
      )
      ,
    );
  }

}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(width: 180.0,
          color: Colors.yellowAccent,
        ),
        new Container(width: 180.0,
          color: Colors.pinkAccent,
        ),
        new Container(width: 180.0,
          color: Colors.orangeAccent,
        ),
      ],
    );
  }
}
