import 'package:flutter/material.dart';
import 'package:app_mobile/ui/menu_drawer.dart';
import 'package:app_mobile/ui/home_list.dart';
//import 'package:scoped_model/scoped_model.dart';
import 'package:app_mobile/models/consult_model.dart';

class HomePage extends StatelessWidget {
  @override

  Widget build (BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),      
      drawer: MenuDrawer(),      
      body: HomePageBody(ConsultModel())      
    );
  }
}

class HomePageBody extends StatefulWidget {
  final ConsultModel model;

  HomePageBody(this.model);

  @override
  
  _HomePageBodyState createState() => new _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  
  @override

  initState() {
    widget.model.fetchConsult();
    super.initState();
  }

  Widget build (BuildContext context) {
    return new Column(
      children: <Widget>[
        HomeList()
      ],
    );
  }
}