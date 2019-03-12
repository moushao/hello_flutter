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
        appBar: new AppBar(title: new Text("ListView_03"),),
        body: GridView.count(padding: const EdgeInsets.all(10.0),
            crossAxisSpacing: 5.0,
            crossAxisCount: 3,
            children: <Widget>[
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
              new Text("wohaha"),
            ],
            /*color: Colors.orange*/),
      )
      ,
    );
  }

}
