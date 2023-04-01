import 'dart:core';
import 'Node.dart';

class Edge {
  late double _weight;
  late Node _dest;

  Edge(Node d, double w) {
    _dest = d;
    _weight = w;
  }

  Node getDest() {
    return _dest;
  }

  double getWeight() {
    return _weight;
  }
}