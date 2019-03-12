import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return getText();
//    return getImage();
    return Demo3();
  }

  MaterialApp Demo3() {
    return MaterialApp(
      title: " hello  fullter",
      home: Scaffold(
        appBar: new AppBar(title: new Text("ListView Demo"),),
        body: new Text("ListView Text"),
      ),
    );
  }

  MaterialApp getImage() {
    return MaterialApp(
      title: "阿弥陀佛",
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              "http://g.hiphotos.baidu.com/image/h%3D300/sign=a11c68e6282dd42a400907ab333a5b2f/e4dde71190ef76c6d1d9c6a49016fdfaaf516731.jpg",
              //color: Colors.greenAccent,
              //colorBlendMode: BlendMode.hue,

              repeat: ImageRepeat.repeatY,
            ),
            width: 400.0,
            height: 400.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }

  MaterialApp getText() {
    return MaterialApp(
        title: "Text widget",
        home: Scaffold(
          body: Center(
            child: Container(
              child: new Text(
                "hahah js pang",
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              alignment: Alignment.topRight,
              height: 400.0,
              width: 500.0,
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 5.0, 40.0),
              margin: const EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.lightBlue, Colors.greenAccent, Colors
                          .purple
                      ]),
                  border: Border.all(width: 2.0, color: Colors.red)
              ),

            ),
          ),
        )
    );
  }
}