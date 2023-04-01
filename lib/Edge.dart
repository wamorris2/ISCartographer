import 'dart:core';
import 'Node.dart';

class Edge {
  late int _weight;
  late Node _dest;

  Edge(Node d, int w) {
    _dest = d;
    _weight = w;
  }

  Node getDest() {
    return _dest;
  }

  int getWeight() {
    return _weight;
  }
}