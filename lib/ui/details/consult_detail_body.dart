import 'package:flutter/material.dart';
import 'package:app_mobile/models/consult.dart';

class ConsultDetailBody extends StatelessWidget {
  final Consult consult;

  ConsultDetailBody(this.consult);

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          color: Colors.white,
          child: new Center(
            child: new Hero(
              tag: 'consult-icon-${consult.id}',
              child: new Scaffold(
                  appBar: new AppBar(
                    title: new Text(consult.nome, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    backgroundColor: Colors.deepOrange,
                  ), 
                  body: Container(
                     width: 900.0,
                     margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 5.0),
                     child: new Column(
                       children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                            child: Row(                       
                              children: <Widget>[
                                Container(
                                  child:  Text(consult.razaosocial, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400)),
                                )                             
                              ],
                            ),
                          ),
                          /* Container(
                            margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: Row(                       
                              children: <Widget>[
                                Container(
                                  child:  Text(consult.location, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400)),
                                )                             
                              ],
                            ),
                          ), */
                          
                       ],
                     ),
                  ),
              )
            ),
          ),
        ),
      ]
    );
  }
}