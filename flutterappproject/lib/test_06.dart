import 'dart:html';

import 'package:flutter/material.dart';

// 程序入口 调用runapp方法
void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  Myhome({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyhomeState creatState() => new _MyhomeState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _MyhomeState extends State<Myhome> {
  int _count = 0;
  void _increase() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 主要UI布局
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewRoute();
                  }));
                },
                child: Text('push')),
            new Text('测试'),
            // 字符和参数拼接
            new Text('$_count ')
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _increase, tooltip: '++', child: new Icon(Icons.add)),
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}
