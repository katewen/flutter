import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//  cupertino组件库
class Mycupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('标题'),
        ),
        child: Center(
          child: CupertinoButton(
            child: Text('press'),
            onPressed: () {},
            color: CupertinoColors.activeBlue,
          ),
        ));
  }
}

class TestText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      // 输出四个
      '这是一个文本' * 4,
      // 左对齐
      textAlign: TextAlign.left,
      // 最大行数
      maxLines: 1,
      // 超出限制后以省略号结尾
      overflow: TextOverflow.ellipsis,
    );
  }
}

class TestButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return new RaisedButton(onPressed: (){},child: Text('悬浮按钮'));
    return TextButton(
      onPressed: () {},
      child: Text('按钮'),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(onPressed: () {}, child: Text('button'));
  }
}

class TestTextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      textInputAction: TextInputAction.search,
      textDirection: TextDirection.ltr,
      // 密文显示
      obscureText: true,
      // 自动对焦
      autofocus: true,
      // 外观样式
      decoration: InputDecoration(
        icon: Icon(Icons.search),
        labelText: '',
      ),
    );
  }
}
