// 基础widget组合复杂widget
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: '菜单',
            onPressed: null, // null 会禁用 button
          ),
          // expanded会填充尚未被其他子项占用的的剩余可用空间。
          // Expanded可以拥有多个children， 然后使用flex参数来确定他们占用剩余空间的比例
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: '搜索',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 绘制UI
    return new Material(
      // Column垂直方向的线性布局.
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              '这是导航栏标题',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          // 填充其余内容的widget
          new Expanded(
            child: new Center(
              child: new Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new MyScaffold(),
  ));
}
