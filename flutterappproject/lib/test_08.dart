import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Myhome(),
    ));

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 组合容器
    return Container(
      child: Image(image: AssetImage('logo')),
      alignment: Alignment.center,
      
    );
    return  
  }
}
