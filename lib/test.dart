import 'Graph.dart';
import 'Node.dart';
import 'UndirectedEdge.dart';
import 'dart:collection';

void main() {
  List<Node> ISCNodes = [
    // Corridors 0 - 83
    Node(null, [], 1, 811, 287, 1.0, 'c1007'), // 0
    Node(null, [], 1, 811, 380, 1.0, 'c1007'), // 1
    Node(null, [], 1, 811, 636, 1.0, 'c1007'), // 2
    Node(null, [], 1, 811, 719, 1.0, 'c1007'), // 3

    Node(null, [], 1, 811, 797, 1.0, 'c1008'), // 4
    Node(null, [], 1, 748, 797, 1.0, 'c1008'), // 5
    Node(null, [], 1, 811, 1012, 1.0, 'c1008'),// 6
    Node(null, [], 1, 811, 1110, 1.0, 'c1008'),// 7
    Node(null, [], 1, 750, 1110, 1.0, 'c1008'),// 8
    Node(null, [], 1, 811, 1275, 1.0, 'c1008'),// 9
    Node(null, [], 1, 811, 1350, 1.0, 'c1008'),// 10
    Node(null, [], 1, 811, 1440, 1.0, 'c1008'), // 11
    Node(null, [], 1, 750, 1110, 1.0, 'c1008'),

    Node(null, [], 1, 811, 1500, 1.0, 'c1010'),

    Node(null, [], 1, 811, 1780, 1.0, 'c1011'),
    Node(null, [], 1, 811, 1870, 1.0, 'c1011'),
    Node(null, [], 1, 750, 1870, 1.0, 'c1011'),
    Node(null, [], 1, 811, 2023, 1.0, 'c1011'),
    Node(null, [], 1, 750, 2023, 1.0, 'c1011'),
    Node(null, [], 1, 885, 2023, 1.0, 'c1011'),
    Node(null, [], 1, 885, 2100, 1.0, 'c1011'),
    Node(null, [], 1, 980, 1780, 1.0, 'c1011'),

    Node(null, [], 1, 1085, 1780, 1.0, 'c1013'),
    Node(null, [], 1, 1140, 1780, 1.0, 'c1013'),
    Node(null, [], 1, 1140, 1950, 1.0, 'c1013'),

    Node(null, [], 1, 1275, 1950, 1.0, 'c1020'),
    Node(null, [], 1, 1420, 1950, 1.0, 'c1020'),
    Node(null, [], 1, 1575, 1950, 1.0, 'c1020'),
    Node(null, [], 1, 1725, 1950, 1.0, 'c1020'),
    Node(null, [], 1, 1880, 1950, 1.0, 'c1020'),
    Node(null, [], 1, 2008, 1950, 1.0, 'c1020'),
    Node(null, [], 1, 2130, 1950, 1.0, 'c1020'),

    Node(null, [], 1, 2295, 1950, 1.0, 'c1019'),
    Node(null, [], 1, 2295, 1840, 1.0, 'c1019'),

    Node(null, [], 1, 2295, 1755, 1.0, 'c1018'), // 34
    Node(null, [], 1, 2295, 1630, 1.0, 'c1018'),
    Node(null, [], 1, 2295, 1555, 1.0, 'c1018'),

    Node(null, [], 1, 2180, 1755, 1.0, 'c1017'),
    Node(null, [], 1, 2085, 1755, 1.0, 'c1017'),

    Node(null, [], 1, 2085, 1555, 1.0, 'c1015'),
    Node(null, [], 1, 2022, 1555, 1.0, 'c1015'),
    Node(null, [], 1, 1935, 1560, 1.0, 'c1015'),
    Node(null, [], 1, 1935, 1495, 1.0, 'c1015'),
    Node(null, [], 1, 1812, 1560, 1.0, 'c1015'),
    Node(null, [], 1, 1670, 1560, 1.0, 'c1015'),
    Node(null, [], 1, 1505, 1560, 1.0, 'c1015'),
    Node(null, [], 1, 1355, 1560, 1.0, 'c1015'),
    Node(null, [], 1, 1222, 1560, 1.0, 'c1015'),

    Node(null, [], 1, 1140, 1560, 1.0, 'c1013'),
    Node(null, [], 1, 1085, 1560, 1.0, 'c1013'),

    Node(null, [], 1, 1100, 1400, 1.0, 'c1205'), // 50
    Node(null, [], 1, 1400, 1400, 1.0, 'c1205'),
    Node(null, [], 1, 1700, 1400, 1.0, 'c1205'),
    Node(null, [], 1, 1700, 1250, 1.0, 'c1205'),
    Node(null, [], 1, 2010, 1250, 1.0, 'c1205'),
    Node(null, [], 1, 2195, 1250, 1.0, 'c1205'),
    Node(null, [], 1, 2305, 1250, 1.0, 'c1205'),

    Node(null, [], 1, 2305, 1195, 1.0, 'c1210'),
    Node(null, [], 1, 2120, 1195, 1.0, 'c1210'), // 58
    Node(null, [], 1, 1910, 1195, 1.0, 'c1210'),
    Node(null, [], 1, 1700, 1195, 1.0, 'c1210'),
    Node(null, [], 1, 1400, 1195, 1.0, 'c1210'),
    Node(null, [], 1, 1305, 1195, 1.0, 'c1210'),

    Node(null, [], 1, 1305, 1100, 1.0, 'c1214'),
    Node(null, [], 1, 1305, 820, 1.0, 'c1214'),
    Node(null, [], 1, 1305, 720, 1.0, 'c1214'),
    Node(null, [], 1, 1305, 530, 1.0, 'c1214'),
    Node(null, [], 1, 1305, 295, 1.0, 'c1214'),
    Node(null, [], 1, 1240, 295, 1.0, 'c1214'),

    Node(null, [], 1, 1345, 265, 1.0, 'c1212'),
    Node(null, [], 1, 1430, 305, 1.0, 'c1212'),
    Node(null, [], 1, 1555, 370, 1.0, 'c1212'),
    Node(null, [], 1, 1690, 435, 1.0, 'c1212'),
    Node(null, [], 1, 1800, 490, 1.0, 'c1212'),
    Node(null, [], 1, 1920, 545, 1.0, 'c1212'),
    Node(null, [], 1, 2040, 605, 1.0, 'c1212'),
    Node(null, [], 1, 2300, 725, 1.0, 'c1212'),

    Node(null, [], 1, 2300, 820, 1.0, 'c1211'),
    Node(null, [], 1, 2300, 940, 1.0, 'c1211'),
    Node(null, [], 1, 2300, 1090, 1.0, 'c1211'),

    Node(null, [], 1, 2115, 720, 1.0, 'c1213'), // 79
    Node(null, [], 1, 1795, 720, 1.0, 'c1213'), // 80
    Node(null, [], 1, 1515, 720, 1.0, 'c1213'), // 81
    Node(null, [], 1, 1415, 720, 1.0, 'c1213'), // 82

    Node(null, [], 1, 995, 290, 1.0, 'c1006'), // 83

    // Room Nodes
    Node(null, [], 1, 1, 1, 1.0, 'r1026');
    Node(null, [], 1, 1, 1, 1.0, 'r1026');
  ];

  List<UndirectedEdge> ISCEdges = [
    UndirectedEdge.inferWeight(ISCNodes[0], ISCNodes[1]),
    UndirectedEdge.inferWeight(ISCNodes[0], ISCNodes[84]),
    UndirectedEdge.inferWeight(ISCNodes[1], ISCNodes[2]),
    UndirectedEdge.inferWeight(ISCNodes[2], ISCNodes[3]),
    UndirectedEdge.inferWeight(ISCNodes[3], ISCNodes[4]),
    UndirectedEdge.inferWeight(ISCNodes[4], ISCNodes[5]),
    UndirectedEdge.inferWeight(ISCNodes[4], ISCNodes[6]),
    UndirectedEdge.inferWeight(ISCNodes[6], ISCNodes[7]),
    UndirectedEdge.inferWeight(ISCNodes[7], ISCNodes[8]),
    UndirectedEdge.inferWeight(ISCNodes[7], ISCNodes[9]),
    UndirectedEdge.inferWeight(ISCNodes[9], ISCNodes[10]),
    UndirectedEdge.inferWeight(ISCNodes[10], ISCNodes[11]),
    UndirectedEdge.inferWeight(ISCNodes[11], ISCNodes[12]),
    UndirectedEdge.inferWeight(ISCNodes[11], ISCNodes[13]),
    UndirectedEdge.inferWeight(ISCNodes[13], ISCNodes[14]),
    UndirectedEdge.inferWeight(ISCNodes[14], ISCNodes[15]),
    UndirectedEdge.inferWeight(ISCNodes[14], ISCNodes[21]),
    UndirectedEdge.inferWeight(ISCNodes[15], ISCNodes[16]),
    UndirectedEdge.inferWeight(ISCNodes[15], ISCNodes[17]),
    UndirectedEdge.inferWeight(ISCNodes[17], ISCNodes[18]),
    UndirectedEdge.inferWeight(ISCNodes[17], ISCNodes[19]),
    UndirectedEdge.inferWeight(ISCNodes[19], ISCNodes[20]),
    UndirectedEdge.inferWeight(ISCNodes[19], ISCNodes[21]),
    UndirectedEdge.inferWeight(ISCNodes[21], ISCNodes[22]),
    UndirectedEdge.inferWeight(ISCNodes[22], ISCNodes[23]),
    UndirectedEdge.inferWeight(ISCNodes[22], ISCNodes[49]),
    UndirectedEdge.inferWeight(ISCNodes[22], ISCNodes[48]),
    UndirectedEdge.inferWeight(ISCNodes[23], ISCNodes[24]),
    UndirectedEdge.inferWeight(ISCNodes[23], ISCNodes[48]),
    UndirectedEdge.inferWeight(ISCNodes[23], ISCNodes[49]),
    UndirectedEdge.inferWeight(ISCNodes[24], ISCNodes[25]),
    UndirectedEdge.inferWeight(ISCNodes[25], ISCNodes[26]),
    UndirectedEdge.inferWeight(ISCNodes[26], ISCNodes[27]),
    UndirectedEdge.inferWeight(ISCNodes[27], ISCNodes[28]),
    UndirectedEdge.inferWeight(ISCNodes[28], ISCNodes[29]),
    UndirectedEdge.inferWeight(ISCNodes[29], ISCNodes[30]),
    UndirectedEdge.inferWeight(ISCNodes[30], ISCNodes[31]),
    UndirectedEdge.inferWeight(ISCNodes[31], ISCNodes[32]),
    UndirectedEdge.inferWeight(ISCNodes[32], ISCNodes[33]),
    UndirectedEdge.inferWeight(ISCNodes[33], ISCNodes[34]),
    UndirectedEdge.inferWeight(ISCNodes[34], ISCNodes[35]),
    UndirectedEdge.inferWeight(ISCNodes[34], ISCNodes[37]),
    UndirectedEdge.inferWeight(ISCNodes[35], ISCNodes[36]),
    UndirectedEdge.inferWeight(ISCNodes[36], ISCNodes[39]),
    UndirectedEdge.inferWeight(ISCNodes[36], ISCNodes[56]),
    UndirectedEdge.inferWeight(ISCNodes[37], ISCNodes[38]),
    UndirectedEdge.inferWeight(ISCNodes[38], ISCNodes[39]),
    UndirectedEdge.inferWeight(ISCNodes[39], ISCNodes[40]),
    UndirectedEdge.inferWeight(ISCNodes[40], ISCNodes[41]),
    UndirectedEdge.inferWeight(ISCNodes[41], ISCNodes[42]),
    UndirectedEdge.inferWeight(ISCNodes[41], ISCNodes[43]),
    UndirectedEdge.inferWeight(ISCNodes[43], ISCNodes[44]),
    UndirectedEdge.inferWeight(ISCNodes[44], ISCNodes[45]),
    UndirectedEdge.inferWeight(ISCNodes[45], ISCNodes[46]),
    UndirectedEdge.inferWeight(ISCNodes[46], ISCNodes[47]),
    UndirectedEdge.inferWeight(ISCNodes[47], ISCNodes[48]),
    UndirectedEdge.inferWeight(ISCNodes[48], ISCNodes[49]),
    UndirectedEdge.inferWeight(ISCNodes[49], ISCNodes[50]),
    UndirectedEdge.inferWeight(ISCNodes[50], ISCNodes[51]),
    UndirectedEdge.inferWeight(ISCNodes[51], ISCNodes[52]),
    UndirectedEdge.inferWeight(ISCNodes[51], ISCNodes[53]),
    UndirectedEdge.inferWeight(ISCNodes[51], ISCNodes[61]),
    UndirectedEdge.inferWeight(ISCNodes[52], ISCNodes[53]),
    UndirectedEdge.inferWeight(ISCNodes[52], ISCNodes[61]),
    UndirectedEdge.inferWeight(ISCNodes[53], ISCNodes[54]),
    UndirectedEdge.inferWeight(ISCNodes[53], ISCNodes[59]),
    UndirectedEdge.inferWeight(ISCNodes[53], ISCNodes[60]),
    UndirectedEdge.inferWeight(ISCNodes[54], ISCNodes[55]),
    UndirectedEdge.inferWeight(ISCNodes[54], ISCNodes[58]),
    UndirectedEdge.inferWeight(ISCNodes[54], ISCNodes[59]),
    UndirectedEdge.inferWeight(ISCNodes[55], ISCNodes[56]),
    UndirectedEdge.inferWeight(ISCNodes[55], ISCNodes[57]),
    UndirectedEdge.inferWeight(ISCNodes[55], ISCNodes[58]),
    UndirectedEdge.inferWeight(ISCNodes[56], ISCNodes[57]),
    UndirectedEdge.inferWeight(ISCNodes[57], ISCNodes[58]),
    UndirectedEdge.inferWeight(ISCNodes[57], ISCNodes[79]),
    UndirectedEdge.inferWeight(ISCNodes[58], ISCNodes[59]),
    UndirectedEdge.inferWeight(ISCNodes[59], ISCNodes[60]),
    UndirectedEdge.inferWeight(ISCNodes[60], ISCNodes[61]),
    UndirectedEdge.inferWeight(ISCNodes[61], ISCNodes[62]),
    UndirectedEdge.inferWeight(ISCNodes[62], ISCNodes[63]),
    UndirectedEdge.inferWeight(ISCNodes[63], ISCNodes[64]),
    UndirectedEdge.inferWeight(ISCNodes[64], ISCNodes[65]),
    UndirectedEdge.inferWeight(ISCNodes[65], ISCNodes[66]),
    UndirectedEdge.inferWeight(ISCNodes[65], ISCNodes[83]),
    UndirectedEdge.inferWeight(ISCNodes[66], ISCNodes[67]),
    UndirectedEdge.inferWeight(ISCNodes[67], ISCNodes[68]),
    UndirectedEdge.inferWeight(ISCNodes[67], ISCNodes[69]),
    UndirectedEdge.inferWeight(ISCNodes[69], ISCNodes[70]),
    UndirectedEdge.inferWeight(ISCNodes[70], ISCNodes[71]),
    UndirectedEdge.inferWeight(ISCNodes[71], ISCNodes[72]),
    UndirectedEdge.inferWeight(ISCNodes[72], ISCNodes[73]),
    UndirectedEdge.inferWeight(ISCNodes[73], ISCNodes[74]),
    UndirectedEdge.inferWeight(ISCNodes[74], ISCNodes[75]),
    UndirectedEdge.inferWeight(ISCNodes[75], ISCNodes[76]),
    UndirectedEdge.inferWeight(ISCNodes[76], ISCNodes[77]),
    UndirectedEdge.inferWeight(ISCNodes[76], ISCNodes[80]),
    UndirectedEdge.inferWeight(ISCNodes[77], ISCNodes[78]),
    UndirectedEdge.inferWeight(ISCNodes[78], ISCNodes[79]),
    UndirectedEdge.inferWeight(ISCNodes[80], ISCNodes[81]),
    UndirectedEdge.inferWeight(ISCNodes[81], ISCNodes[82]),
    UndirectedEdge.inferWeight(ISCNodes[82], ISCNodes[83]),

  ];
  print("${ISCNodes.length} ${ISCEdges.length}");

  Graph ISCGraph = Graph(ISCNodes, ISCEdges);
  Queue<Node> path = ISCGraph.findShortestPath(ISCNodes[50], ISCNodes[58]);
  print("Between 0 and 10, of length ${path.length}: $path");
  print("Hello World");
}