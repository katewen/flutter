
import 'package:flutter/material.dart';
// 无状态容器
class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "主页",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SampleAppPage(),
    );
  }
}

// 有状态的容器 区别于无状态容器 包含states属性
class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key: key}) : super(key: key);
  _SampleAppPageState CreateState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  String textToshow = "Flutter";
  void _updateText() {
    setState(() {
      textToshow = "ios落魄了";
    });
  }

//  返回值为widget的方法
  _changeView() {
    if (true) {
      return Text("view1");
    } else {
      return Text("view2");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      body: Center(
        //  返回一个开关控制的widget
        child: _changeView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: "update text",
        child: Icon(Icons.update),
      ),
    );
  }
}

//  实现动画
class MyFadTest extends StatefulWidget {
  MyFadTest({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyFadTest createState() => _MyFadTest();
}

class _MyFadTest extends State<MyFadTest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    // 反转动画类型
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    // 曲线动画
    curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      body: Center(
        child: Container(
          child: FadeTransition(
            opacity: curvedAnimation,
            child: FlutterLogo(
              size: 100.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'test',
        child: Icon(Icons.update),
        onPressed: () {
          controller.forward();
        },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
