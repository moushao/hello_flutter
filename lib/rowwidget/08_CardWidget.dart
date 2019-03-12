import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myColumnWidget();
  }

  MaterialApp myColumnWidget() {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text(
                "四川成都", style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("13432423233"),
              leading: new Icon(Icons.lightbulb_outline)),
          new Divider(),
          ListTile(
              title: Text(
                "四川成都", style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("13432423233"),
              leading: new Icon(Icons.lightbulb_outline)),
          new Divider(),
          ListTile(
              title: Text(
                "四川成都", style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("13432423233"),
              leading: new Icon(Icons.lightbulb_outline,color: Colors.lightBlue)),
        ],
      ),
    );
    return MaterialApp(
      title: "ColumnWidget Demo",
      home: Scaffold(
        appBar: new AppBar(title: new Text("锤子方向布局"),),
        body: Center(child: card,),
      ),
    );
  }
}