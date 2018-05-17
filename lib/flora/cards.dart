import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  //Widget build(BuildContext context) {
  // return new Scaffold(
  //     appBar: new AppBar(title: new Text("Collections")),
  //     body: new Container(
  //         padding: new EdgeInsets.all(10.0),
  //         child: new Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //            children: <Widget>[
  //                new Image.asset(
  //                    'images/Rafflesia.jpg', height: 200.0, width: 250.0, fit: BoxFit.scaleDown),
  //                new Image.asset(
  //                    'images/Rafflesia.jpg', height: 200.0, width: 250.0, fit: BoxFit.scaleDown),
//
//
  //              ]
  //          )
  //      )
  //  );
  //}
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Collections"),
          centerTitle: true,
        ),
        body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            new Image.asset('images/Rafflesia.jpg'),
            new Image.asset('images/nepenthes.jpg'),
            new Image.asset('images/unknown.jpg'),
            new Image.asset('images/unknown.jpg'),
            new Image.asset('images/unknown.jpg'),
            new Image.asset('images/unknown.jpg'),
          ],
        ));
  }
}
