import 'Graph.dart';
import 'Node.dart';
import 'UndirectedEdge.dart';
import 'dart:collection';
List<Node> ISCNodes = [
// Corridors 0 - 83
Node(1, 811, 287, 1.0, 'c1007'), // 0
Node(1, 811, 380, 1.0, 'c1007'), // 1
Node(1, 811, 636, 1.0, 'c1007'), // 2
Node(1, 811, 719, 1.0, 'c1007'), // 3

Node(1, 811, 797, 1.0, 'c1008'), // 4
Node(1, 748, 797, 1.0, 'c1008'), // 5
Node(1, 811, 1012, 1.0, 'c1008'),// 6
Node(1, 811, 1110, 1.0, 'c1008'),// 7
Node(1, 750, 1110, 1.0, 'c1008'),// 8
Node(1, 811, 1275, 1.0, 'c1008'),// 9
Node(1, 811, 1350, 1.0, 'c1008'),// 10
Node(1, 811, 1440, 1.0, 'c1008'), // 11
Node(1, 750, 1110, 1.0, 'c1008'),

Node(1, 811, 1500, 1.0, 'c1010'),

Node(1, 811, 1780, 1.0, 'c1011'),
Node(1, 811, 1870, 1.0, 'c1011'),
Node(1, 750, 1870, 1.0, 'c1011'),
Node(1, 811, 2023, 1.0, 'c1011'),
Node(1, 750, 2023, 1.0, 'c1011'),
Node(1, 885, 2023, 1.0, 'c1011'),
Node(1, 885, 2100, 1.0, 'c1011'),
Node(1, 980, 1780, 1.0, 'c1011'),

Node(1, 1085, 1780, 1.0, 'c1013'),
Node(1, 1140, 1780, 1.0, 'c1013'),
Node(1, 1140, 1950, 1.0, 'c1013'),

Node(1, 1275, 1950, 1.0, 'c1020'),
Node(1, 1420, 1950, 1.0, 'c1020'),
Node(1, 1575, 1950, 1.0, 'c1020'),
Node(1, 1725, 1950, 1.0, 'c1020'),
Node(1, 1880, 1950, 1.0, 'c1020'),
Node(1, 2008, 1950, 1.0, 'c1020'),
Node(1, 2130, 1950, 1.0, 'c1020'),

Node(1, 2295, 1950, 1.0, 'c1019'),
Node(1, 2295, 1840, 1.0, 'c1019'),

Node(1, 2295, 1755, 1.0, 'c1018'), // 34
Node(1, 2295, 1630, 1.0, 'c1018'),
Node(1, 2295, 1555, 1.0, 'c1018'),

Node(1, 2180, 1755, 1.0, 'c1017'),
Node(1, 2085, 1755, 1.0, 'c1017'),

Node(1, 2085, 1555, 1.0, 'c1015'),
Node(1, 2022, 1555, 1.0, 'c1015'),
Node(1, 1935, 1560, 1.0, 'c1015'),
Node(1, 1935, 1495, 1.0, 'c1015'),
Node(1, 1812, 1560, 1.0, 'c1015'),
Node(1, 1670, 1560, 1.0, 'c1015'),
Node(1, 1505, 1560, 1.0, 'c1015'),
Node(1, 1355, 1560, 1.0, 'c1015'),
Node(1, 1222, 1560, 1.0, 'c1015'),

Node(1, 1140, 1560, 1.0, 'c1013'),
Node(1, 1085, 1560, 1.0, 'c1013'),

Node(1, 1100, 1400, 1.0, 'c1205'), // 50
Node(1, 1400, 1400, 1.0, 'c1205'),
Node(1, 1700, 1400, 1.0, 'c1205'),
Node(1, 1700, 1250, 1.0, 'c1205'),
Node(1, 2010, 1250, 1.0, 'c1205'),
Node(1, 2195, 1250, 1.0, 'c1205'),
Node(1, 2305, 1250, 1.0, 'c1205'),

Node(1, 2305, 1195, 1.0, 'c1210'),
Node(1, 2120, 1195, 1.0, 'c1210'), // 58
Node(1, 1910, 1195, 1.0, 'c1210'),
Node(1, 1700, 1195, 1.0, 'c1210'),
Node(1, 1400, 1195, 1.0, 'c1210'),
Node(1, 1305, 1195, 1.0, 'c1210'),

Node(1, 1305, 1100, 1.0, 'c1214'),
Node(1, 1305, 820, 1.0, 'c1214'),
Node(1, 1305, 720, 1.0, 'c1214'),
Node(1, 1305, 530, 1.0, 'c1214'),
Node(1, 1305, 295, 1.0, 'c1214'),
Node(1, 1240, 295, 1.0, 'c1214'),

Node(1, 1345, 265, 1.0, 'c1212'),
Node(1, 1430, 305, 1.0, 'c1212'),
Node(1, 1555, 370, 1.0, 'c1212'),
Node(1, 1690, 435, 1.0, 'c1212'),
Node(1, 1800, 490, 1.0, 'c1212'),
Node(1, 1920, 545, 1.0, 'c1212'),
Node(1, 2040, 605, 1.0, 'c1212'),
Node(1, 2300, 725, 1.0, 'c1212'),

Node(1, 2300, 820, 1.0, 'c1211'),
Node(1, 2300, 940, 1.0, 'c1211'),
Node(1, 2300, 1090, 1.0, 'c1211'),

Node(1, 2115, 720, 1.0, 'c1213'), // 80
Node(1, 1795, 720, 1.0, 'c1213'), // 81
Node(1, 1515, 720, 1.0, 'c1213'), // 82
Node(1, 1415, 720, 1.0, 'c1213'), // 83

Node(1, 995, 290, 1.0, 'c1006'), // 84

Node(1, 811, 850, 1.0, 'c1008'), // 85
Node(1, 930, 850, 1.0, 'c1009'), // 86
Node(1, 930, 965, 1.0, 'c1009'), // 87
Node(1, 930, 1090, 1.0, 'c1009'),// 88
Node(1, 930, 1185, 1.0, 'c1089'),// 89

// Room Nodes
Node(1, 844, 199, 1.0, 'r1022'), // 90
Node(1, 863, 375, 1.0, 'r1025'), // 91
Node(1, 618, 235, 1.0, 'r1026'), // 92
Node(1, 753, 209, 1.0, 'r1027'), // 93
Node(1, 622, 492, 1.0, 'r1028'), // 94
Node(1, 937, 505, 1.0, 'r1029'), // 95
Node(1, 760, 612, 1.0, 'r1030'), // 96
Node(1, 942, 715, 1.0, 'r1031'), // 97
Node(1, 700, 719, 1.0, 'r1032'), // 98
Node(1, 640, 936, 1.0, 'r1036'), // 99
Node(1, 880, 1010, 1.0, 'r1037'), // 100
Node(1, 754, 1017, 1.0, 'r1038'), // 101
Node(1, 887, 1273, 1.0, 'r1039'), // 102
Node(1, 618, 1300, 1.0, 'r1040'), // 103
Node(1, 874, 1378, 1.0, 'r1041'), // 104
Node(1, 755, 1223, 1.0, 'r1042'), // 105
Node(1, 915, 1438, 1.0, 'r1043'), // 106
Node(1, 976, 1221, 1.0, 'r1050'), // 107
Node(1, 883, 1162, 1.0, 'r1051'), // 108
Node(1, 976, 1167, 1.0, 'r1052'), // 109
Node(1, 883, 1065, 1.0, 'r1053'), // 110
Node(1, 976, 1085, 1.0, 'r1054'), // 111
Node(1, 990, 997, 1.0, 'r1056'), // 112
Node(1, 886, 949, 1.0, 'r1057'), // 113
Node(1, 995, 943, 1.0, 'r1058'), // 114
Node(1, 888, 903, 1.0, 'r1059'), // 115
Node(1, 986, 876, 1.0, 'r1060'), // 116
Node(1, 935, 1585, 1.0, 'r1061'), // 117
Node(1, 738, 1513, 1.0, 'r1062'), // 118
Node(1, 610, 1722, 1.0, 'r1064'), // 119
Node(1, 757, 1606, 1.0, 'r1066'), // 120
Node(1, 590, 2011, 1.0, 'r1068'), // 121

Node(1, 1153, 1990, 1.0, 'r1159'), // 122
Node(1, 1278, 1990, 1.0, 'r1157'), // 123
Node(1, 1369, 1990, 1.0, 'r1153'), // 124
Node(1, 1457, 1990, 1.0, 'r1151'), // 125
Node(1, 1549, 1990, 1.0, 'r1149'), // 126
Node(1, 1638, 1990, 1.0, 'r1147'), // 127
Node(1, 1730, 1990, 1.0, 'r1145'), // 128
Node(1, 1815, 1990, 1.0, 'r1143'), // 129
Node(1, 1900, 1990, 1.0, 'r1141'), // 130
Node(1, 1992, 1990, 1.0, 'r1139'), // 131
Node(1, 2126, 1990, 1.0, 'r1137'), // 132
Node(1, 2200, 1990, 1.0, 'r1135'), // 133
Node(1, 1200, 1890, 1.0, 'r1160'), // 134
Node(1, 1270, 1890, 1.0, 'r1158'), // 135
Node(1, 1345, 1890, 1.0, 'r1156'), // 136
Node(1, 1421, 1890, 1.0, 'r1154'), // 137
Node(1, 1495, 1890, 1.0, 'r1152'), // 138
Node(1, 1573, 1890, 1.0, 'r1150'), // 139
Node(1, 1643, 1890, 1.0, 'r1148'), // 140
Node(1, 1724, 1890, 1.0, 'r1146'), // 141
Node(1, 1797, 1890, 1.0, 'r1144'), // 142
Node(1, 1870, 1890, 1.0, 'r1142'), // 143
Node(1, 1905, 1890, 1.0, 'r1140'), // 144
Node(1, 2009, 1890, 1.0, 'r1138'), // 145
Node(1, 2375, 1836, 1.0, 'r1129'), // 146
Node(1, 2512, 1600, 1.0, 'r1127'), // 147
Node(1, 2365, 1633, 1.0, 'r1125'), // 148
Node(1, 2365, 1553, 1.0, 'r1123'), // 149
Node(1, 2376, 1508, 1.0, 'r1121'), // 150
Node(1, 2189, 1687, 1.0, 'r1119'), // 151
Node(1, 2022, 1744, 1.0, 'r1114'), // 152
Node(1, 2015, 1673, 1.0, 'r1112'), // 153
Node(1, 2024, 1603, 1.0, 'r1110'), // 154
Node(1, 1988, 1604, 1.0, 'r1108'), // 155
Node(1, 2141, 1415, 1.0, 'r1111'), // 156
Node(1, 2000, 1418, 1.0, 'r1109'), // 157
Node(1, 1924, 1419, 1.0, 'r1107'), // 158
Node(1, 1919, 1616, 1.0, 'r1106'), // 159
Node(1, 1806, 1648, 1.0, 'r1104'), // 160
Node(1, 1667, 1648, 1.0, 'r1102'), // 161
Node(1, 1604, 1648, 1.0, 'r1094'), // 162
Node(1, 1537, 1648, 1.0, 'r1092'), // 163
Node(1, 1468, 1648, 1.0, 'r1090'), // 164
Node(1, 1398, 1648, 1.0, 'r1088'), // 165
Node(1, 1334, 1618, 1.0, 'r1086'), // 166
Node(1, 1250, 1618, 1.0, 'r1084'), // 167
Node(1, 1185, 1618, 1.0, 'r1082'), // 168
Node(1, 1211, 1736, 1.0, 'r1162'), // 169
Node(1, 1822, 1505, 1.0, 'r1105'), // 170
Node(1, 1787, 1505, 1.0, 'r1103'), // 171
Node(1, 1668, 1505, 1.0, 'r1095'), // 172
Node(1, 1635, 1505, 1.0, 'r1093'), // 173
Node(1, 1524, 1505, 1.0, 'r1091'), // 174
Node(1, 1486, 1505, 1.0, 'r1089'), // 175
Node(1, 1372, 1505, 1.0, 'r1087'), // 176
Node(1, 1336, 1505, 1.0, 'r1085'), // 177
Node(1, 1219, 1505, 1.0, 'r1083'), // 178
Node(1, 1185, 1505, 1.0, 'r1081'), // 179
Node(1, 1488, 1096, 1.0, 'r1233'), // 180
Node(1, 1695, 1121, 1.0, 'r1229'), // 181
Node(1, 1910, 1121, 1.0, 'r1227'), // 182
Node(1, 2124, 1121, 1.0, 'r1223'), // 183
Node(1, 2510, 945, 1.0, 'r1221'), // 184
Node(1, 2000, 840, 1.0, 'r1251'), // 185
Node(1, 1754, 856, 1.0, 'r1247'), // 186
Node(1, 1426, 845, 1.0, 'r1243'), // 187
Node(1, 1914, 626, 1.0, 'r1252'), // 188
Node(1, 1757, 604, 1.0, 'r1250'), // 189
Node(1, 1551, 548, 1.0, 'r1280'), // 190
Node(1, 2306, 655, 1.0, 'r1261'), // 191
Node(1, 2219, 615, 1.0, 'r1263'), // 192
Node(1, 2171, 600, 1.0, 'r1265'), // 193
Node(1, 2082, 558, 1.0, 'r1267'), // 194
Node(1, 2035, 535, 1.0, 'r1269'), // 195
Node(1, 1955, 500, 1.0, 'r1271'), // 196
Node(1, 1907, 478, 1.0, 'r1273'), // 197
Node(1, 1757, 394, 1.0, 'r1277'), // 198
Node(1, 1707, 377, 1.0, 'r1279'), // 199
Node(1, 1623, 339, 1.0, 'r1281'), // 200
Node(1, 1574, 317, 1.0, 'r1283'), // 201
Node(1, 1490, 275, 1.0, 'r1285'), // 202
Node(1, 1450, 255, 1.0, 'r1287'), // 203
Node(1, 1383, 224, 1.0, 'r1289'), // 204
Node(1, 1285, 207, 1.0, 'r1291'), // 205
];
List<UndirectedEdge> ISCEdges = [
// Room-Corridor edges
UndirectedEdge(ISCNodes[90], ISCNodes[0], 0),
UndirectedEdge(ISCNodes[91], ISCNodes[1], 0),
UndirectedEdge(ISCNodes[92], ISCNodes[93], 0),
UndirectedEdge(ISCNodes[92], ISCNodes[94], 0),
UndirectedEdge(ISCNodes[93], ISCNodes[94], 0),
UndirectedEdge(ISCNodes[94], ISCNodes[96], 0),
UndirectedEdge(ISCNodes[94], ISCNodes[99], 0),
UndirectedEdge(ISCNodes[95], ISCNodes[2], 0),
UndirectedEdge(ISCNodes[97], ISCNodes[2], 0),
UndirectedEdge(ISCNodes[98], ISCNodes[99], 0),
UndirectedEdge(ISCNodes[98], ISCNodes[99], 0),
UndirectedEdge(ISCNodes[99], ISCNodes[5], 0),
UndirectedEdge(ISCNodes[99], ISCNodes[8], 0),
UndirectedEdge(ISCNodes[100], ISCNodes[6], 0),
UndirectedEdge(ISCNodes[101], ISCNodes[8], 0),
UndirectedEdge(ISCNodes[102], ISCNodes[9], 0),
UndirectedEdge(ISCNodes[102], ISCNodes[89], 0),
UndirectedEdge(ISCNodes[103], ISCNodes[8], 0),
UndirectedEdge(ISCNodes[103], ISCNodes[12], 0),
UndirectedEdge(ISCNodes[103], ISCNodes[119], 0),
UndirectedEdge(ISCNodes[104], ISCNodes[10], 0),
UndirectedEdge(ISCNodes[105], ISCNodes[8], 0),
UndirectedEdge(ISCNodes[106], ISCNodes[11], 0),
UndirectedEdge(ISCNodes[106], ISCNodes[117], 0),
UndirectedEdge(ISCNodes[107], ISCNodes[89], 0),
UndirectedEdge(ISCNodes[108], ISCNodes[89], 0),
UndirectedEdge(ISCNodes[109], ISCNodes[88], 0),
UndirectedEdge(ISCNodes[110], ISCNodes[88], 0),
UndirectedEdge(ISCNodes[111], ISCNodes[88], 0),
UndirectedEdge(ISCNodes[112], ISCNodes[87], 0),
UndirectedEdge(ISCNodes[113], ISCNodes[87], 0),
UndirectedEdge(ISCNodes[114], ISCNodes[87], 0),
UndirectedEdge(ISCNodes[115], ISCNodes[86], 0),
UndirectedEdge(ISCNodes[116], ISCNodes[86], 0),
UndirectedEdge(ISCNodes[117], ISCNodes[13], 0),
UndirectedEdge(ISCNodes[118], ISCNodes[13], 0),
UndirectedEdge(ISCNodes[118], ISCNodes[119], 0),
UndirectedEdge(ISCNodes[119], ISCNodes[120], 0),
UndirectedEdge(ISCNodes[119], ISCNodes[16], 0),
UndirectedEdge(ISCNodes[121], ISCNodes[18], 0),
UndirectedEdge(ISCNodes[122], ISCNodes[24], 0),
UndirectedEdge(ISCNodes[123], ISCNodes[25], 0),
UndirectedEdge(ISCNodes[124], ISCNodes[26], 0),
UndirectedEdge(ISCNodes[125], ISCNodes[26], 0),
UndirectedEdge(ISCNodes[126], ISCNodes[27], 0),
UndirectedEdge(ISCNodes[127], ISCNodes[27], 0),
UndirectedEdge(ISCNodes[128], ISCNodes[28], 0),
UndirectedEdge(ISCNodes[129], ISCNodes[29], 0),
UndirectedEdge(ISCNodes[130], ISCNodes[29], 0),
UndirectedEdge(ISCNodes[131], ISCNodes[30], 0),
UndirectedEdge(ISCNodes[132], ISCNodes[31], 0),
UndirectedEdge(ISCNodes[133], ISCNodes[31], 0),
UndirectedEdge(ISCNodes[134], ISCNodes[24], 0),
UndirectedEdge(ISCNodes[135], ISCNodes[25], 0),
UndirectedEdge(ISCNodes[136], ISCNodes[25], 0),
UndirectedEdge(ISCNodes[137], ISCNodes[26], 0),
UndirectedEdge(ISCNodes[138], ISCNodes[26], 0),
UndirectedEdge(ISCNodes[138], ISCNodes[27], 0),
UndirectedEdge(ISCNodes[139], ISCNodes[28], 0),
UndirectedEdge(ISCNodes[140], ISCNodes[27], 0),
UndirectedEdge(ISCNodes[140], ISCNodes[28], 0),
UndirectedEdge(ISCNodes[141], ISCNodes[28], 0),
UndirectedEdge(ISCNodes[142], ISCNodes[28], 0),
UndirectedEdge(ISCNodes[142], ISCNodes[29], 0),
UndirectedEdge(ISCNodes[143], ISCNodes[29], 0),
UndirectedEdge(ISCNodes[144], ISCNodes[29], 0),
UndirectedEdge(ISCNodes[145], ISCNodes[30], 0),
UndirectedEdge(ISCNodes[146], ISCNodes[33], 0),
UndirectedEdge(ISCNodes[147], ISCNodes[34], 0),
UndirectedEdge(ISCNodes[147], ISCNodes[150], 0),
UndirectedEdge(ISCNodes[148], ISCNodes[35], 0),
UndirectedEdge(ISCNodes[149], ISCNodes[36], 0),
UndirectedEdge(ISCNodes[151], ISCNodes[34], 0),
UndirectedEdge(ISCNodes[151], ISCNodes[37], 0),
UndirectedEdge(ISCNodes[152], ISCNodes[38], 0),
UndirectedEdge(ISCNodes[153], ISCNodes[38], 0),
UndirectedEdge(ISCNodes[154], ISCNodes[40], 0),
UndirectedEdge(ISCNodes[155], ISCNodes[40], 0),
UndirectedEdge(ISCNodes[156], ISCNodes[39], 0),
UndirectedEdge(ISCNodes[156], ISCNodes[55], 0),
UndirectedEdge(ISCNodes[157], ISCNodes[40], 0),
UndirectedEdge(ISCNodes[158], ISCNodes[42], 0),
UndirectedEdge(ISCNodes[159], ISCNodes[41], 0),
UndirectedEdge(ISCNodes[160], ISCNodes[43], 0),
UndirectedEdge(ISCNodes[161], ISCNodes[44], 0),
UndirectedEdge(ISCNodes[162], ISCNodes[44], 0),
UndirectedEdge(ISCNodes[162], ISCNodes[45], 0),
UndirectedEdge(ISCNodes[163], ISCNodes[45], 0),
UndirectedEdge(ISCNodes[164], ISCNodes[45], 0),
UndirectedEdge(ISCNodes[165], ISCNodes[46], 0),
UndirectedEdge(ISCNodes[166], ISCNodes[46], 0),
UndirectedEdge(ISCNodes[167], ISCNodes[47], 0),
UndirectedEdge(ISCNodes[168], ISCNodes[47], 0),
UndirectedEdge(ISCNodes[168], ISCNodes[48], 0),
UndirectedEdge(ISCNodes[169], ISCNodes[23], 0),
UndirectedEdge(ISCNodes[170], ISCNodes[43], 0),
UndirectedEdge(ISCNodes[171], ISCNodes[43], 0),
UndirectedEdge(ISCNodes[172], ISCNodes[44], 0),
UndirectedEdge(ISCNodes[173], ISCNodes[44], 0),
UndirectedEdge(ISCNodes[174], ISCNodes[45], 0),
UndirectedEdge(ISCNodes[175], ISCNodes[45], 0),
UndirectedEdge(ISCNodes[176], ISCNodes[46], 0),
UndirectedEdge(ISCNodes[177], ISCNodes[46], 0),
UndirectedEdge(ISCNodes[178], ISCNodes[47], 0),
UndirectedEdge(ISCNodes[179], ISCNodes[47], 0),
UndirectedEdge(ISCNodes[180], ISCNodes[61], 0),
UndirectedEdge(ISCNodes[180], ISCNodes[60], 0),
UndirectedEdge(ISCNodes[181], ISCNodes[60], 0),
UndirectedEdge(ISCNodes[182], ISCNodes[59], 0),
UndirectedEdge(ISCNodes[183], ISCNodes[58], 0),
UndirectedEdge(ISCNodes[184], ISCNodes[57], 0),
UndirectedEdge(ISCNodes[184], ISCNodes[77], 0),
UndirectedEdge(ISCNodes[185], ISCNodes[80], 0),
UndirectedEdge(ISCNodes[185], ISCNodes[81], 0),
UndirectedEdge(ISCNodes[186], ISCNodes[81], 0),
UndirectedEdge(ISCNodes[187], ISCNodes[83], 0),
UndirectedEdge(ISCNodes[188], ISCNodes[74], 0),
UndirectedEdge(ISCNodes[189], ISCNodes[73], 0),
UndirectedEdge(ISCNodes[189], ISCNodes[81], 0),
UndirectedEdge(ISCNodes[190], ISCNodes[71], 0),
UndirectedEdge(ISCNodes[190], ISCNodes[82], 0),
UndirectedEdge(ISCNodes[191], ISCNodes[76], 0),
UndirectedEdge(ISCNodes[192], ISCNodes[76], 0),
UndirectedEdge(ISCNodes[192], ISCNodes[75], 0),
UndirectedEdge(ISCNodes[193], ISCNodes[75], 0),
UndirectedEdge(ISCNodes[193], ISCNodes[76], 0),
UndirectedEdge(ISCNodes[194], ISCNodes[75], 0),
UndirectedEdge(ISCNodes[195], ISCNodes[75], 0),
UndirectedEdge(ISCNodes[196], ISCNodes[74], 0),
UndirectedEdge(ISCNodes[197], ISCNodes[74], 0),
UndirectedEdge(ISCNodes[198], ISCNodes[72], 0),
UndirectedEdge(ISCNodes[199], ISCNodes[72], 0),
UndirectedEdge(ISCNodes[200], ISCNodes[71], 0),
UndirectedEdge(ISCNodes[201], ISCNodes[71], 0),
UndirectedEdge(ISCNodes[202], ISCNodes[70], 0),
UndirectedEdge(ISCNodes[203], ISCNodes[70], 0),
UndirectedEdge(ISCNodes[204], ISCNodes[69], 0),
UndirectedEdge(ISCNodes[205], ISCNodes[67], 0),
UndirectedEdge(ISCNodes[205], ISCNodes[69], 0),
// Corridor-Corridor edges
UndirectedEdge.inferWeight(ISCNodes[0], ISCNodes[1]),
UndirectedEdge.inferWeight(ISCNodes[0], ISCNodes[84]),
UndirectedEdge.inferWeight(ISCNodes[1], ISCNodes[2]),
UndirectedEdge.inferWeight(ISCNodes[2], ISCNodes[3]),
UndirectedEdge.inferWeight(ISCNodes[3], ISCNodes[4]),
UndirectedEdge.inferWeight(ISCNodes[4], ISCNodes[5]),
UndirectedEdge.inferWeight(ISCNodes[4], ISCNodes[85]),
UndirectedEdge.inferWeight(ISCNodes[85], ISCNodes[6]),
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
UndirectedEdge.inferWeight(ISCNodes[85], ISCNodes[86]),
UndirectedEdge.inferWeight(ISCNodes[86], ISCNodes[87]),
UndirectedEdge.inferWeight(ISCNodes[87], ISCNodes[88]),
UndirectedEdge.inferWeight(ISCNodes[88], ISCNodes[89]),

];
Graph ISCGraph = Graph(ISCNodes, ISCEdges);

Queue<Node>? shortestPathBetweenRooms(String roomSrc, String roomDest) {
  Node? nodeRoomSrc = ISCGraph.findNodeFromRoom(roomSrc);
  Node? nodeRoomDest = ISCGraph.findNodeFromRoom(roomDest);
  return (nodeRoomSrc != null && nodeRoomDest != null) ? ISCGraph.findShortestPath(nodeRoomSrc, nodeRoomDest) : null;
}

// returns two nodes that
List<Node?> nodesForTwoDoors(Node roomNode) {
  print(roomNode);
  List<Node?> ret = [null, null];
  List<Node> queue = [];
  queue.insert(0, roomNode);
  Set<Node> discovered = <Node>{};
  discovered.add(roomNode);
  while (queue.isNotEmpty) {
    print(queue);
    Node curr = queue.removeLast();
    print(curr.getEdges());
    for (final e in curr.getEdges()) {
      if (!discovered.contains(e.getDest())) {
        if (e.getDest().getTrait().startsWith('c')) {
          if (ret[0] != null) {
            ret[1] = e.getDest();
            return ret;
          }
          else {
            ret[0] = e.getDest();
          }
        }
        discovered.add(e.getDest());
        queue.insert(0, e.getDest());
      }
    }
  }
  return ret;
}


void main() {
  // tests
  print(nodesForTwoDoors(ISCNodes[189]));

  Queue<Node> path = shortestPathBetweenRooms('1261', '1229')!;
  print("Between room 1261 and 1229, path of length ${path.length}: $path");
}