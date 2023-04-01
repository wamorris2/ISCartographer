import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key, required this.roomNumber, required this.locationType});

  final String roomNumber;
  final String locationType;

  @override
  createState() => NavigationState();
}

class NavigationState extends State<NavigationWidget> {

  String roomNumber = "0000";
  String locationType = "near room";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Route'),
      ),
      body: Center(child: Column(
          children : <Widget>[
            Text("${widget.locationType} ${widget.roomNumber}"),
            Image.asset("assets/ISC_First.png"),
          ]
      )),
    );
  }
}