import 'Node.dart';

class UndirectedEdge {
  late String _src, _dest;
  late double _weight;

  UndirectedEdge(String src, String dest, double weight) {
    _src = src;
    _dest = dest;
    _weight = weight;
  }


}