import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:florapedia/flora/florapediahome.dart';
import 'package:camera/camera.dart';
import 'package:florapedia/flora/cards.dart';
import 'package:florapedia/flora/camera_screen.dart';
import 'package:florapedia/flora/chat_screen.dart';
import 'package:florapedia/flora/homescreen.dart';
import 'package:florapedia/flora/location.dart';
import 'package:florapedia/flora/rewards.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "FLORAPEDIA",
      theme: new ThemeData(
        primaryColor: new Color(0xff056f00),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new FlorapediaHome(cameras),
    );
  }
}

class FlorapediaHome extends StatefulWidget {
  var cameras;
  FlorapediaHome(this.cameras);

  @override
  _FlorapediaHomeState createState() => new _FlorapediaHomeState();
}

class _FlorapediaHomeState extends State<FlorapediaHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Florapedia"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(icon: new Icon(Icons.card_membership)),
            new Tab(icon: new Icon(Icons.location_on)),
            new Tab(icon: new Icon(Icons.redeem)),
            new Tab(icon: new Icon(Icons.chat)),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new HomeScreen(),
          new CameraScreen(widget.cameras),
          new Cards(),
          new Locations(),
          new Rewards(),
          new ChatScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
