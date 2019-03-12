import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListViewWidget();
  }
}

MaterialApp ListViewWidget() {
  return MaterialApp(
    title: "hello Flutter's List View",
    home: Scaffold(
      appBar: new AppBar(title: new Text("ListView Widget"),),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.perm_camera_mic),
            title: new Text("perm_camera_micsss"),),
          new ListTile(
            leading: new Icon(Icons.people_outline),
            title: new Text("people_outline"),),
          new ListTile(
            leading: new Icon(Icons.accessible_forward),
            title: new Text("accessible_forward"),),
          new Image.network("http://h.hiphotos.baidu"
              ".com/image/h%3D300/sign=7cd08c6c3712b31bd86ccb29b6183674/730e0cf3d7ca7bcb051bd704b0096b63f624a8bc.jpg"),
        ],
      ),
    ),
  );
}