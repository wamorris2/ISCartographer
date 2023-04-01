import 'Node.dart';
import 'Edge.dart';

class UndirectedEdge extends Edge {
  late Node _src;

  UndirectedEdge(Node src, Node dest, double weight) : super(dest, weight) {
    _src = src;
  }

  UndirectedEdge.inferWeight(Node src, Node dest) : super(dest, Node.distance(src, dest)){
    _src = src;
  }

  Node getSrc() {
    return _src;
  }
}