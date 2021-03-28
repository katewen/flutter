import 'package:flutter/material.dart';

void main() {
  return (new MaterialApp(
    title: 'my app',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Scaffold是Material中主要的布局组件
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: '菜单',
          onPressed: null,
        ),
        title: new Text('导航栏'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: '搜索',
            onPressed: null,
          ),
        ],
      ),
      //body占屏幕的大部分
      body: new Center(
        child: new Text('Hello, world!'),
      ),
      // 按钮
      floatingActionButton: new FloatingActionButton(
        tooltip: '+', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
