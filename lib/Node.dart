import 'Edge.dart';
import 'Graph.dart';
import 'dart:math';

class Node {
  late List<Edge> _edges;
  late int _floor;
  late double _x, _y, _z;
  late String _trait;

  Node(List<Edge> edges, int floor, double x, double y, double z, String trait) {
    _edges = edges;
    _floor = floor;
    _x = x;
    _y = y;
    _z = z;
    _trait = trait;
  }

  @override
  bool operator ==(Object other) =>
      other is Node &&
          other.getTrait() == _trait &&
          other.getX() == _x &&
          other.getY() == _y &&
          other.getZ() == _z;

  @override
  int get hashCode => Object.hash(_trait, _x, _y, _z);

  bool equals(Node other) {
    return other.getX() == _x && other.getY() == _y && other.getZ() == _z && other.getTrait() == _trait;
  }

  double getDist(Node other) {
    return sqrt(pow(other.getX() - _x, 2)+pow(other.getY() - _y, 2) + pow(other.getZ() - _z, 2));
  }

  static double distance(Node a, Node b) {
    return sqrt(pow(a.getX() - b.getX(), 2)+pow(a.getY() - b.getY(), 2) + pow(a.getZ() - b.getZ(), 2));
  }

  void addEdge(Edge e) {
    _edges.add(e);
  }

  List<Edge> getEdges() {
    return _edges;
  }

  List<Node> getNeighbors() {
    List<Node> neighbors = [];
    for (int i = 0; i < _edges.length; i++) {
      neighbors.add(_edges[i].getDest());
    }
    return neighbors;
  }

  String getTrait() {
    return _trait;
  }

  int getFloor() {
    return _floor;
  }

  double getX() {
    return _x;
  }

  double getY() {
    return _y;
  }

  double getZ() {
    return _z;
  }
}