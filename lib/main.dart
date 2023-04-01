import 'package:flutter/material.dart';
import 'package:isc_cartogropher/UndirectedEdge.dart';
import 'Graph.dart';
import 'Node.dart';

void main() {
  runApp(const MyApp());
  List<Node> ISCNodes = [
    // Corridors 0 - 83
    Node([], 1, 811, 287, 1.0, 'c1007'),
    Node([], 1, 811, 380, 1.0, 'c1007'),
    Node([], 1, 811, 636, 1.0, 'c1007'),
    Node([], 1, 811, 719, 1.0, 'c1007'),

    Node([], 1, 811, 797, 1.0, 'c1008'),
    Node([], 1, 748, 797, 1.0, 'c1008'),
    Node([], 1, 811, 1012, 1.0, 'c1008'),
    Node([], 1, 811, 1110, 1.0, 'c1008'),
    Node([], 1, 750, 1110, 1.0, 'c1008'),
    Node([], 1, 811, 1275, 1.0, 'c1008'),
    Node([], 1, 811, 1350, 1.0, 'c1008'),
    Node([], 1, 811, 1440, 1.0, 'c1008'),
    Node([], 1, 750, 1110, 1.0, 'c1008'),

    Node([], 1, 811, 1500, 1.0, 'c1010'),

    Node([], 1, 811, 1780, 1.0, 'c1011'),
    Node([], 1, 811, 1870, 1.0, 'c1011'),
    Node([], 1, 750, 1870, 1.0, 'c1011'),
    Node([], 1, 811, 2023, 1.0, 'c1011'),
    Node([], 1, 750, 2023, 1.0, 'c1011'),
    Node([], 1, 885, 2023, 1.0, 'c1011'),
    Node([], 1, 885, 2100, 1.0, 'c1011'),
    Node([], 1, 980, 1780, 1.0, 'c1011'),

    Node([], 1, 1085, 1780, 1.0, 'c1013'),
    Node([], 1, 1140, 1780, 1.0, 'c1013'),
    Node([], 1, 1140, 1950, 1.0, 'c1013'),

    Node([], 1, 1275, 1950, 1.0, 'c1020'),
    Node([], 1, 1420, 1950, 1.0, 'c1020'),
    Node([], 1, 1575, 1950, 1.0, 'c1020'),
    Node([], 1, 1725, 1950, 1.0, 'c1020'),
    Node([], 1, 1880, 1950, 1.0, 'c1020'),
    Node([], 1, 2008, 1950, 1.0, 'c1020'),
    Node([], 1, 2130, 1950, 1.0, 'c1020'),

    Node([], 1, 2295, 1950, 1.0, 'c1019'),
    Node([], 1, 2295, 1840, 1.0, 'c1019'),

    Node([], 1, 2295, 1755, 1.0, 'c1018'),
    Node([], 1, 2295, 1630, 1.0, 'c1018'),
    Node([], 1, 2295, 1555, 1.0, 'c1018'),

    Node([], 1, 2295, 1755, 1.0, 'c1017'),
    Node([], 1, 2180, 1755, 1.0, 'c1017'),
    Node([], 1, 2085, 1755, 1.0, 'c1017'),

    Node([], 1, 2085, 1555, 1.0, 'c1015'),
    Node([], 1, 2022, 1555, 1.0, 'c1015'),
    Node([], 1, 1935, 1560, 1.0, 'c1015'),
    Node([], 1, 1935, 1495, 1.0, 'c1015'),
    Node([], 1, 1812, 1560, 1.0, 'c1015'),
    Node([], 1, 1670, 1560, 1.0, 'c1015'),
    Node([], 1, 1505, 1560, 1.0, 'c1015'),
    Node([], 1, 1355, 1560, 1.0, 'c1015'),
    Node([], 1, 1222, 1560, 1.0, 'c1015'),

    Node([], 1, 1140, 1560, 1.0, 'c1013'),
    Node([], 1, 1085, 1560, 1.0, 'c1013'),

    Node([], 1, 1100, 1400, 1.0, 'c1205'),
    Node([], 1, 1400, 1400, 1.0, 'c1205'),
    Node([], 1, 1700, 1400, 1.0, 'c1205'),
    Node([], 1, 1700, 1250, 1.0, 'c1205'),
    Node([], 1, 2010, 1250, 1.0, 'c1205'),
    Node([], 1, 2195, 1250, 1.0, 'c1205'),
    Node([], 1, 2305, 1250, 1.0, 'c1205'),

    Node([], 1, 2305, 1195, 1.0, 'c1210'),
    Node([], 1, 2120, 1195, 1.0, 'c1210'),
    Node([], 1, 1910, 1195, 1.0, 'c1210'),
    Node([], 1, 1700, 1195, 1.0, 'c1210'),
    Node([], 1, 1700, 1195, 1.0, 'c1210'),
    Node([], 1, 1400, 1195, 1.0, 'c1210'),
    Node([], 1, 1305, 1195, 1.0, 'c1210'),

    Node([], 1, 1305, 1100, 1.0, 'c1214'),
    Node([], 1, 1305, 820, 1.0, 'c1214'),
    Node([], 1, 1305, 720, 1.0, 'c1214'),
    Node([], 1, 1305, 530, 1.0, 'c1214'),
    Node([], 1, 1305, 295, 1.0, 'c1214'),
    Node([], 1, 1240, 295, 1.0, 'c1214'),

    Node([], 1, 1345, 265, 1.0, 'c1212'),
    Node([], 1, 1430, 305, 1.0, 'c1212'),
    Node([], 1, 1555, 370, 1.0, 'c1212'),
    Node([], 1, 1690, 435, 1.0, 'c1212'),
    Node([], 1, 1800, 490, 1.0, 'c1212'),
    Node([], 1, 1920, 545, 1.0, 'c1212'),
    Node([], 1, 2040, 605, 1.0, 'c1212'),
    Node([], 1, 2300, 725, 1.0, 'c1212'),

    Node([], 1, 2300, 820, 1.0, 'c1211'),
    Node([], 1, 2300, 940, 1.0, 'c1211'),
    Node([], 1, 2300, 1090, 1.0, 'c1211'),

    Node([], 1, 2115, 720, 1.0, 'c1213'),
    Node([], 1, 1795, 720, 1.0, 'c1213'),
    Node([], 1, 1515, 720, 1.0, 'c1213'),
    Node([], 1, 1415, 720, 1.0, 'c1213'),


  ];

  List<UndirectedEdge> ISCEdges = [
    UndirectedEdge.inferWeight(ISCNodes[0], ISCNodes[1]),
    UndirectedEdge.inferWeight(ISCNodes[1], ISCNodes[2]),
    UndirectedEdge.inferWeight(ISCNodes[2], ISCNodes[3]),
    UndirectedEdge.inferWeight(ISCNodes[3], ISCNodes[4]),
    UndirectedEdge.inferWeight(ISCNodes[4], ISCNodes[5]),
    UndirectedEdge.inferWeight(ISCNodes[5], ISCNodes[6]),

  ];

  Graph ISCGraph = Graph(ISCNodes, ISCEdges);
  Node? closestNode = ISCGraph.findNodeFromRoom('123');
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  String roomNumber = "";
  String locationType = "near room";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: "near room",
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem(value: "near room", child: Text("near room")),
                DropdownMenuItem(value: "in room", child: Text("in room"))
              ],
              onChanged: (String? value) {
                setState(() {
                  locationType = value ?? "near room";
                });
              }
            ),
            SizedBox(
              // height: 200,
            width:100,
            child: TextFormField(
              controller: TextEditingController(
                text: roomNumber
              ),
              autocorrect: false,
              maxLength: 4,
              keyboardType: TextInputType.number
            )
                ),
            ]
          ),
        ),
      ); // This trailing comma makes auto-formatting nicer for build methods.
  }



// apparently we have to dispose these widgets after use to free the resources

}