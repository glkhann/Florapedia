import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Profile")),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Image.network(
                      'http://engsci.curtin.edu.my/wp-content/uploads/sites/111/2015/10/GarenthL-230x346.jpg',
                      height: 150.0,
                      width: 125.0,
                      fit: BoxFit.scaleDown),
                  new Text(
                    "Name: Garenth Lim",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontSize: 25.0,
                    ),
                  ),
                  new Text(
                    "Title: Botanist",
                    style: new TextStyle(fontSize: 25.0),
                  ),
                  new Text(
                    "Point: 5047",
                    style: new TextStyle(fontSize: 25.0),
                  ),
                  new MyCard(
                      title: new Text("LIST OF ACHIEVEMENT",
                          style:
                              new TextStyle(color: Colors.red, fontSize: 25.0)),
                      icon: new Icon(Icons.local_florist,
                          size: 40.0, color: Colors.greenAccent)),
                  new Text(
                    "Gunung Gading",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                  new Text(
                    "Niah Cave National Park",
                    style: new TextStyle(fontSize: 25.0),
                  ),
                  new Text(
                    "Lambir Hills National Park",
                    style: new TextStyle(fontSize: 25.0),
                  )
                ])));
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: new Column(children: <Widget>[this.title, this.icon]))));
  }
}

//class home extends StatelessWidget {
// @override
//  Widget build(BuildContext context) {
//  return
//  new Container(
//  new Container(
//height: 50.0,
//        width: 50.0,

//        alignment: Alignment.topLeft,
//        child: new Image.network('http://engsci.curtin.edu.my/wp-content/uploads/sites/111/2015/10/GarenthL-230x346.jpg', fit: BoxFit.cover),
//        ),
//      );

//  }
//}
