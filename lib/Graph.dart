import 'dart:collection';

import 'Node.dart';
import 'Edge.dart';
import 'UndirectedEdge.dart';
import 'dart:math';
import 'package:collection/collection.dart';

class Graph {
  late List<Node> _nodes;

  Graph(List<Node> nodes, List<UndirectedEdge> edges) {
    _nodes = nodes;
    addEdgesToNodes(edges);
  }

  void addEdgesToNodes(List<UndirectedEdge> edges) {
    for (final e in edges) {
      Node n1 = e.getSrc();
      Node n2 = e.getDest();

      // add two directed edges between the two nodes
      n1.addEdge(Edge(n2, e.getWeight()));
      n2.addEdge(Edge(n1, e.getWeight()));
    }
  }

  Node? findNodeFromRoom(String roomNumber) {
    for (final n in _nodes) {
      if (n.getTrait() == 'r$roomNumber') return n;
    }
    return null;
  }

  Queue<Node> findShortestPath(Node start, Node end) {
    Node curr = start;
    PriorityQueue<Node> openNodes = PriorityQueue();
    openNodes.add(curr);
    while (openNodes.isNotEmpty) {
      curr = openNodes.removeFirst();
      print('$curr');
      if (curr == end) {
        final path = Queue<Node>()..add(end);
        while (curr.getParent() != null) {
          curr = curr.getParent()!;
          path.addFirst(curr);
        }

        return path;
      }
      curr..setClosedSet(true)
          ..setOpenSet(false);
      List<Edge> edges = curr.getEdges();
      for (int i = 0; i < edges.length; i++) {
        Node neigh = edges[i].getDest();
        if (neigh.inClosedSet()) continue;
        if (!neigh.inOpenSet()) {
          neigh
            ..setParent(curr)
            ..setG(curr.getG() + edges[i].getWeight());
          final h = Node.distance(neigh, end);
          neigh.setH(h);

          openNodes.add(neigh);
          neigh.setOpenSet(true);
        }
      }
    }
    return Queue<Node>();
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