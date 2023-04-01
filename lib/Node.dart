import 'Edge.dart';
import 'Graph.dart';

class Node {
  late List<Edge> edges;
  late int floor;
  late double x, y, z;

  Node(List<Edge> edges, int floor, double x, double y, double z) {
    this.edges = edges;
    this.floor = floor;
    this.x = x;
    this.y = y;
    this.z = z;
  }
}