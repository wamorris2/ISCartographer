import 'Node.dart';
import 'Edge.dart';

class PathNode {
  late double _g, _h;
  late PathNode? _parent;
  late List<Edge> _edges;

  PathNode(PathNode? parent, List<Edge> edges, double g, double h) {
    _parent = parent;
    _edges = edges;
    _g = g;
    _h = h;
  }

  PathNode? getParent() {
    return _parent;
  }

  List<Edge> getEdges() {
    return _edges;
  }

  double getG() {
    return _g;
  }

  double getH() {
    return _h;
  }

  double getCost() {
    return _g + _h;
  }
}