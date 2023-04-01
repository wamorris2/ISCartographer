import 'Node.dart';
import 'Edge.dart';
import 'dart:core';

class PathNode extends Node implements Comparable{
  late double _g, _h;
  late PathNode? _parent;

  PathNode(Node source, PathNode? parent, double g, double h) :
        super(source.getEdges(), source.getFloor(), source.getX(), source.getY(), source.getZ(), source.getTrait()) {
    _parent = parent;
    _g = g;
    _h = h;
  }

  PathNode? getParent() {
    return _parent;
  }

  double getG() {
    return _g;
  }

  void setG(double g) {
    _g = g;
  }

  double getH() {
    return _h;
  }

  void setH(double h) {
    _h = h;
  }

  double getCost() {
    return _g + _h;
  }

  @override
  int compareTo(other) {
    if (other is PathNode) {
      if (this.getCost() < other.getCost())
        return -1;
      if (this.getCost() > other.getCost())
        return 1;
      if (this.getH() < other.getH())
        return -1;
      if (this.getH() > other.getH())
        return 1;
    }
    return 0;
  }

  @override
  String toString() {
    String ret = "";
    PathNode? curr = this;
    while (curr is PathNode) {
      ret += curr.getTrait();

      curr = _parent;
    }
    return ret;
  }
}