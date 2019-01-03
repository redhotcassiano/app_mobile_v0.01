import 'package:flutter/material.dart';
import 'package:app_mobile/utils/routes.dart';
import 'package:app_mobile/ui/home_page.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:app_mobile/models/consult_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes.initRoutes();

    return ScopedModel<ConsultModel>(
      model: ConsultModel(),
      child: new MaterialApp(
        title: 'App Mobile v0.0.1',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new HomePage(),
        debugShowCheckedModeBanner: false,
      ),
     );
  }
}