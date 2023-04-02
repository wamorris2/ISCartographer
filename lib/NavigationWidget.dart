import 'dart:collection';

import 'package:flutter/material.dart';
import 'Node.dart';
import 'test.dart';
import 'Graph.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:typed_data';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key, required this.roomNumber1, required this.roomNumber2, required this.locationType});

  final String roomNumber1;
  final String roomNumber2;
  final String locationType;

  @override
  createState() => NavigationState();
}

class NavigationState extends State<NavigationWidget> {

  late final Queue<Node> path;
  late ui.Image image;
  bool isImageLoaded = false;
  GlobalKey _myCanvasKey = new GlobalKey();
  Paint paint = Paint();


  void initState() {
    super.initState();
    init();
  }

  Future <Null> init() async {
    paint.color = Colors.red;
    paint.strokeWidth = 5.0;
    final ByteData data = await rootBundle.load('assets/ISC_First.png');
    image = await loadImage( Uint8List.view(data.buffer));
  }

  Future<ui.Image> loadImage(Uint8List img) async {
    final Completer<ui.Image> completer =  Completer();
    ui.decodeImageFromList(img, (ui.Image img) {
      setState(() {
        isImageLoaded = true;
      });
      return completer.complete(img);
    });
    return completer.future;
  }
  
  List<DrawingPoints> fillDrawingPoints(Queue<Node> path) {
    List<DrawingPoints> ret = [];
    for (final n in path) {
      ret.add(DrawingPoints(points: Offset(n.getX(), n.getY()), paint: paint));
    }
    
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    Queue<Node> path = shortestPathBetweenRooms(widget.roomNumber1, widget.roomNumber2)!;
    List<DrawingPoints> drawingPoints = fillDrawingPoints(path);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Route'),
      ),
      body: Center(child: Column(
          children : <Widget>[
            Text("from ${widget.locationType} ${widget.roomNumber1} to ${widget.roomNumber2}"),
            CustomPaint(
              key: _myCanvasKey,
              painter: ImagePainter(image: image, pointsList: drawingPoints)
            ),
          ]
      )),
    );
  }
}



class DrawingPoints {
  late Offset points;
  late Paint paint;
  DrawingPoints({required this.points, required this.paint});
}

class ImagePainter extends CustomPainter {
  ImagePainter({required this.image, required this.pointsList});
  ui.Image image;

  List<DrawingPoints> pointsList;
  late List<Offset> offsetPoints = [];

  List<Offset> points = [];

  // final Paint painter = new Paint()


  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawImage(this.image, Offset(0.0, 0.0), Paint());
    final imageSize = Size(image.width.toDouble(), image.height.toDouble());
    final src = Offset.zero & imageSize;
    final dst = Offset.zero & size;
    // canvas.pic
    canvas.drawImageRect(image, src, dst, Paint());
    // for (Offset offset in points) {
    //   canvas.drawCircle(offset, 10, painter);
    // }
    pointsList = pointsList.map((e) {
      if (e != null) {
        if (e.points.dy <= dst.height) {
          return e;
        }
      }
      return null;
    }) as List<DrawingPoints>;
    for (int i = 0; i < pointsList.length - 1; i++) {
      if (pointsList[i] != null && pointsList[i + 1] != null) {
        canvas.drawLine(pointsList[i].points, pointsList[i + 1].points,
            pointsList[i].paint);
      } else if (pointsList[i] != null && pointsList[i + 1] == null) {
        offsetPoints.clear();
        offsetPoints.add(pointsList[i].points);
        offsetPoints.add(Offset(
            pointsList[i].points.dx + 0.1, pointsList[i].points.dy + 0.1));
        canvas.drawPoints(
            ui.PointMode.lines, offsetPoints, pointsList[i].paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}