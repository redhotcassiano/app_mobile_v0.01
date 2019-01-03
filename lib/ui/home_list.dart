import 'package:flutter/material.dart';
import 'package:app_mobile/style/theme.dart' as Theme;
import 'package:app_mobile/models/list_consult.dart';
import 'package:app_mobile/ui/list_consult_row.dart';



class HomeList extends StatelessWidget{ 
   @override
  Widget build(BuildContext context) {
    
    return new Flexible(
      child: new Container(
        color: Colors.white,
        child: new ListView.builder(
          itemExtent: 160.0,
          itemCount: ListConsult.consults.length,
          itemBuilder: (_, index) => new ListConsultRow(ListConsult.consults[index]),
        ),
      ),
);
  }
}






