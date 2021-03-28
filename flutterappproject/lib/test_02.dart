
// 添加动画方式
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: demoApp(),
    ));

class demoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(body: Signature());
}

class Signature extends StatefulWidget {
  SignatureState createState() => SignatureState();
}

class SignatureState extends State<Signature> {
  List<Offset> _points = <Offset>[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        setState(() {
          RenderBox referenceBox = context.findRenderObject();
          Offset locationPosition =
              referenceBox.globalToLocal(details.globalPosition);
          _points = List.from(_points)..add(locationPosition);
        });
      },
      onPanEnd: (DragEndDetails details) => _points.add(null),
      child: CustomPaint (
        painter: SignaturePaint(_points),
        size: Size.infinite,
      ),
    );
  }
}

class SignaturePaint extends CustomPainter {
  SignaturePaint(this.points);
  final List<Offset>points;
  void paint(Canvas canvas,Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;
    for (int i=0;i<points.length-1;i++) {
      if (points[i] != null && points[i+1] != null) {
        canvas.drawLine(points[i], points[i+1], paint);
      }
    }
  }
  bool shouldRepaint(SignaturePaint other) => other.points != points;

}