import 'Node.dart';
import 'Edge.dart';

class Path {
  late Node _start;
  List<Edge> edges = [];

  Path(Node start) {
    _start = start;
  }
}