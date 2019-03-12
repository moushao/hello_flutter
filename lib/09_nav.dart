import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "导航app",
      home: firstScreen()
  ));
}

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("导航"),),
      body: Center(
          child: RaisedButton(child: Text("详情"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
              new SecondScreen()));
            },)
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品详情"),),
      body: Center(
        child: RaisedButton(child: Text("返回"), onPressed: () {
          Navigator.pop(context);
        }),
      ),
    );
  }
}

