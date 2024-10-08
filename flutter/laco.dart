import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lá Cờ Việt Nam'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 38, 24), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), 
                      spreadRadius: 10,
                      blurRadius: 15,  
                      offset: Offset(5, 10), 
                    ),
                  ],
                ),
                child: Center(
                  child: CustomPaint(
                    size: Size(100, 100), // Kích thước ngôi sao
                    painter: StarPainter(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    // Hàm vẽ ngôi sao vàng 5 cánh
    var path = Path();
    const int numPoints = 5;
    final double radiusOuter = size.width / 2;
    final double radiusInner = radiusOuter * 0.5;
    final double angle = (2 * pi) / numPoints;

    for (int i = 0; i < numPoints; i++) {
      double outerX = size.width / 2 + radiusOuter * cos(i * angle - pi / 2);
      double outerY = size.height / 2 + radiusOuter * sin(i * angle - pi / 2);

      double innerX = size.width / 2 + radiusInner * cos((i + 0.5) * angle - pi / 2);
      double innerY = size.height / 2 + radiusInner * sin((i + 0.5) * angle - pi / 2);

      if (i == 0) {
        path.moveTo(outerX, outerY);
      } else {
        path.lineTo(outerX, outerY);
      }
      path.lineTo(innerX, innerY);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
