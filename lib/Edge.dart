import 'dart:core';
import 'Node.dart';

class Edge {
  late int weight;
  late Node dest;

  Edge(Node d, int w) {
    dest = d;
    weight = w;
  }
}