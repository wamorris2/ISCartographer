import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key, String roomNumber = "0000"});

  @override
  createState() {
    return NavigationState();
  }
}

class NavigationState extends State<NavigationWidget> {
  NavigationState({roomNumber = "0000"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Route'),
      ),
      body: Center(child: Image.asset("assets/ISC_First.png")),
    );
  }
}