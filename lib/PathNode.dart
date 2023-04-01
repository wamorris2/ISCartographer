import 'Node.dart';
import 'Edge.dart';

class PathNode extends Node{
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
}