import 'package:flutter/material.dart';
import 'package:app_mobile/models/consult.dart';
import 'package:app_mobile/models/list_consult.dart';
import 'package:app_mobile/ui/details/consult_detail_body.dart';

class ConsultDetailPage extends StatelessWidget {

  final Consult consult;

  ConsultDetailPage(String id) : consult =  ListConsult.getConsultById(id);   

  @override
  Widget build(BuildContext context) {   

    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          ConsultDetailBody(consult)
        ],
      ),
    );
  }
}