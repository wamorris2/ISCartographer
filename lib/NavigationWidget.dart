import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key, required this.roomNumber1, required this.roomNumber2, required this.locationType});

  final String roomNumber1;
  final String roomNumber2;
  final String locationType;

  @override
  createState() => NavigationState();
}

class NavigationState extends State<NavigationWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Route'),
      ),
      body: Center(child: Column(
          children : <Widget>[
            Text("from ${widget.locationType} ${widget.roomNumber1} to ${widget.roomNumber2}"),
            Image.asset("assets/ISC_First.png"),
          ]
      )),
    );
  }
}