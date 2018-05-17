import 'package:flutter/material.dart';

class Rewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Trips")),
      body: new ListView(
        children: <Widget>[
          new Image.asset('images/Niah.png',
              height: 100.0, width: 500.0, fit: BoxFit.scaleDown),
          new Image.asset('images/Mulu.png',
              height: 100.0, width: 500.0, fit: BoxFit.scaleDown),
          new Image.asset('images/Bako.png',
              height: 100.0, width: 500.0, fit: BoxFit.scaleDown),
        ],
      ),
    );
  }
}
