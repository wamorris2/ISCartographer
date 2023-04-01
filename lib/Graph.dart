import 'Node.dart';
import 'Edge.dart';
import 'Path.dart';
import 'PathNode.dart';
import 'dart:math';
import 'package:collection/collection.dart';

class Graph {
  late List<Node> _nodes;
  Graph(List<Node> nodes) {
    _nodes = nodes;
  }

  double distance(Node a, Node b) {
    return sqrt(pow(a.getX() - b.getX(), 2) + pow(a.getY() - b.getY(), 2) + pow(a.getZ() - b.getZ(), 2));
  }

  Path findShortestPath(Node start, Node end) {
    Path path = Path(start);
    PathNode curr = PathNode(null, start.getEdges(), 0, distance(start, end));
    PriorityQueue<PathNode> openNodes = PriorityQueue();
    List<PathNode> closedNodes = [start];
    while (curr != start) {
      closedNodes.add(curr);
      List<Edge> edges = curr.getEdges();
      for (int i = 0; i < edges.length; i++) {
        Node neigh = edges[i].getDest();
        int g = curr.getG() + neigh.getG();
        if (closedNodes.contains(neigh)) continue;
        bool inside = false;
        for (final v in openNodes.unorderedElements) {
          if (v.equals(neigh)) {

          }
        }
        if (!inside) {
          openNodes.add(n);
        }
      }
    }



    return path;
  }

  // get current location
  Node findNearestNode(int x, int y, int z) {
    double minDist = 2147483647.0;
    int minIndex = 0;
    for (var i = 0; i < _nodes.length; i++) {
      Node n = _nodes[i];
      double dist = sqrt(pow(n.getX() - x, 2) + pow(n.getY() - y, 2) + pow(n.getZ() - z, 2));
      if (dist < minDist) {
        minDist = dist;
        minIndex = i;
      }
    }
    return _nodes[minIndex];
  }
}