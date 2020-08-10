import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RenderTiles extends StatefulWidget {
  @override
  _RenderTilesState createState() => _RenderTilesState();
}

class _RenderTilesState extends State<RenderTiles> {
  final tilesArray = [[10,5,"Red"],[0,0,"Blue"]]; //TO DO: render rects drom an array(position and color)

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
    painter: TilePainter(),
    child: RenderTiles(),
    );
  }
}

final customPaint = CustomPaint(
  painter: TilePainter(),
  child: RenderTiles(),
);

class TilePainter extends CustomPainter {
  Rect rect = const Offset(2.0, 2.0) & const Size(3.0,4.0); 

  @override 
  void paint(Canvas canvas, Size size){
    canvas.drawRect(rect, Paint());
  }

  @override 
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}