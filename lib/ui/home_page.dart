import 'package:flutter/material.dart';
import 'package:app_mobile/ui/menu_drawer.dart';
import 'package:app_mobile/ui/home_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),      
      drawer: MenuDrawer(),      
      body: HomePageBody()      
    );
  }
}

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => new _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build (BuildContext context) {
    return new Column(
      children: <Widget>[
        HomeList()
      ],
    );
  }
}