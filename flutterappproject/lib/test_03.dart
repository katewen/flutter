import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappproject/main.dart';

//  自定义按钮
class CustomeButton extends StatelessWidget {
  final String label;
  CustomeButton(this.label);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: click, child: Text(label));
  }

  void click() {
    print("点击按钮");
  }
}

void main() {
  runApp(CupertinoApp(
      home: CustomeButton("label"), routes: <String, WidgetBuilder>{}));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "MyApp",
    );
  }
}
