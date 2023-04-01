import 'Node.dart';

class UndirectedEdge {
  late Node _src, _dest;
  late double _weight;

  UndirectedEdge(Node src, Node dest, double weight) {
    _src = src;
    _dest = dest;
    _weight = weight;
  }

  UndirectedEdge.inferWeight(Node src, Node dest) {
    _src = src;
    _dest = dest;
    _weight = Node.distance(src, dest);
  }
}