import 'package:flutter/material.dart';
import 'package:app_mobile/ui/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'App Mobile v0.0.1',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}