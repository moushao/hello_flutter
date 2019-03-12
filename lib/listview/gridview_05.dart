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
        appBar: new AppBar(title: new Text("ListView_05"),),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
          ),
          children: <Widget>[
            new Image.network("http://b.hiphotos.baidu"
                ".com/image/h%3D300/sign=c8a9d4e2841363270aedc433a18fa056"
                "/11385343fbf2b2114a65cd70c48065380cd78e41.jpg",
              fit: BoxFit.fill,),
            new Image.network("http://h.hiphotos.baidu"
                ".com/image/h%3D300/sign=735d3740c2bf6c81e8372ae88c3fb1d7/962bd40735fae6cd9456784901b30f2442a70f3c.jpg",
              fit: BoxFit.fill,),
            new Image.network("http://b.hiphotos.baidu"
                ".com/image/h%3D300/sign=a573495ce5f81a4c3932eac9e72a6029/2e2eb9389b504fc27c224b2debdde71190ef6d9d.jpg",
              fit: BoxFit.fill,),
            new Image.network("http://g.hiphotos.baidu"
                ".com/image/h%3D300/sign=2a5524e6e8cd7b89f66c3c833f244291/1e30e924b899a901b25a7f1a13950a7b0208f5ab.jpg",
              fit: BoxFit.fill,),
            new Image.network("http://e.hiphotos.baidu"
                ".com/image/h%3D300/sign=890aa5f33701213fd03348dc64e736f8"
                "/fc1f 4134970a304e210531d0dfc8a786c9175cf0.jpg",
              fit: BoxFit.fill,),
            new Image.network("http://h.hiphotos.baidu"
                ".com/image/h%3D300/sign=7cd08c6c3712b31bd86ccb29b6183674/730e0cf3d7ca7bcb051bd704b0096b63f624a8bc.jpg",
              fit: BoxFit.fill,),
          ],
        ),
      )
      ,
    );
  }

}
