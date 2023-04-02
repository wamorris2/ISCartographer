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
  Paint paint = Paint()
  ..color = Colors.red
  ..strokeWidth = 5;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future <Null> init() async {
    final ByteData data = await rootBundle.load('assets/ISC_First.png');
    image = await loadImage(Uint8List.view(data.buffer));
  }

  Future<ui.Image> loadImage(Uint8List img) async {
    final Completer<ui.Image> completer =  Completer();
    ui.decodeImageFromList(img, (ui.Image img) {
      setState(() {
        print("Loaded!");
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
    // Node? nodeRoomSrc = ISCGraph.findNodeFromRoom(widget.roomNumber1);
    // Node? nodeRoomDest = ISCGraph.findNodeFromRoom(widget.roomNumber2);
    // Queue<Node> path = ISCGraph.findShortestPath(nodeRoomSrc!, nodeRoomDest!);
    Queue<Node> path = shortestPathBetweenRooms(widget.roomNumber1, widget.roomNumber2)!;
    String pathStr = "\nInstructions: \n";
    for (final n in path) {
      String trait = n.getTrait();
      if (trait.startsWith('c')) {
        pathStr += "Go down corridor ${trait.substring(1)}\n";
      } else if (trait.startsWith('r')) {
        pathStr += "Arrive at room ${trait.substring(1)}\n";
      }
    }
    List<DrawingPoints> drawingPoints = fillDrawingPoints(path);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Route'),
      ),
      body: Center(child: Column(
          children : <Widget>[
            Text("from ${widget.locationType} ${widget.roomNumber1} to ${widget.roomNumber2}"),

            Text(pathStr, textAlign: TextAlign.center,),
            Expanded(child: Image.asset("assets/ISC_First.png", scale:1.5)),
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

class MyWidget extends SingleChildRenderObjectWidget {
  MyWidget({required this.image, required this.pointsList});
  ui.Image image;

  List<DrawingPoints> pointsList;
  @override
  MyRenderBox createRenderObject(BuildContext context) {
    return MyRenderBox(image: image, pointsList: pointsList);
  }
}

class MyRenderBox extends RenderBox {
  double myHeight = 200;

  MyRenderBox({required this.image, required this.pointsList});
  ui.Image image;

  List<DrawingPoints> pointsList;

  @override
  void paint(PaintingContext context, Offset offset) {
    Paint paint = Paint()
      ..color = Colors.black..style = PaintingStyle.fill;
    context.canvas.drawRect(
        Rect.fromLTRB(offset.dx, offset.dy,
          offset.dx + size.width, offset.dy + size.height,), paint);
    //if (this.image != null)
      //context.canvas.drawImage(this.image, Offset(0,0), Paint());
    paint..color = Colors.red..style = PaintingStyle.stroke;
    for(int i=0; i<pointsList.length-1; i++){

      DrawingPoints pt = pointsList[i];
      double dx = pt.points.dx / size.width;
      double dy = pt.points.dy / size.height;
      pt = pointsList[i+1];
      double dx2 = pt.points.dx / size.width;
      double dy2 = pt.points.dy / size.height;
      print('Scaled $dx, $dy');
      print('Unscaled ${pt.points}\n');
      print(pt.paint.strokeWidth);
      context.canvas.drawLine(pointsList[i].points-offset, pointsList[i+1].points-offset, paint);
    }
  }

  @override
  void performLayout() {
    size = Size(
      constraints.constrainWidth(200),
      constraints.constrainHeight(myHeight),
    );
  }

  // Timer just an example to show dynamic behavior
  // MyRenderBox(){
  //   Timer.periodic(Duration(seconds: 2), handleTimeout);
  // }
  void handleTimeout(timer) {
    myHeight += 40;
    markNeedsLayoutForSizedByParentChange();
    layout(constraints);
  }
}

class ImagePainter extends CustomPainter {
  ImagePainter({required this.image, required this.pointsList});
  ui.Image image;

  List<DrawingPoints> pointsList;
  late List<Offset> offsetPoints = [];


  // final Paint painter = new Paint()


  @override
  void paint(Canvas canvas, Size size) {
    final clipRect = Rect.fromLTWH(0,0,size.width, size.height);
    canvas.clipRect(clipRect);
    Paint painter = Paint()..color = Colors.red;
    //canvas.drawRect(Rect.fromLTWH(0, 0, 50, 50), painter);
    // canvas.drawImage(image,  const Offset(0.0, 0.0),  Paint());
    for(int i=0; i<pointsList.length-1; i++){

      DrawingPoints pt = pointsList[i];
      double dx = pt.points.dx / size.width;
      double dy = pt.points.dy / size.height;
      pt = pointsList[i+1];
      double dx2 = pt.points.dx / size.width;
      double dy2 = pt.points.dy / size.height;
      print('Scaled $dx, $dy');
      print('Unscaled ${pt.points}\n');
      print(pt.paint.strokeWidth);
      canvas.drawCircle(pointsList[i].points, 20, pt.paint);
    }
    // canvas.drawImage(this.image, Offset(0.0, 0.0), Paint());
    // final imageSize = Size(image.width.toDouble(), image.height.toDouble());
    // final src = Offset.zero & imageSize;
    // final dst = Offset.zero & size;
    // // canvas.pic
    // canvas.drawImageRect(image, src, dst, Paint());
    // // for (Offset offset in points) {
    // //   canvas.drawCircle(offset, 10, painter);
    // // }
    // pointsList = List<DrawingPoints>.from(pointsList.map((e) {
    //   if (e != null) {
    //     if (e.points.dy <= dst.height) {
    //       return e;
    //     }
    //   }
    //   return null;
    // }).toList());
    // for (int i = 0; i < pointsList.length - 1; i++) {
    //   if (pointsList[i] != null && pointsList[i + 1] != null) {
    //     canvas.drawLine(pointsList[i].points, pointsList[i + 1].points,
    //         pointsList[i].paint);
    //   } else if (pointsList[i] != null && pointsList[i + 1] == null) {
    //     offsetPoints.clear();
    //     offsetPoints.add(pointsList[i].points);
    //     offsetPoints.add(Offset(
    //         pointsList[i].points.dx + 0.1, pointsList[i].points.dy + 0.1));
    //     canvas.drawPoints(
    //         ui.PointMode.lines, offsetPoints, pointsList[i].paint);
    //   }
    // }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}