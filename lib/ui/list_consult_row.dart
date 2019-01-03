import 'package:flutter/material.dart';
import 'package:app_mobile/models/consult.dart';

class ListConsultRow extends StatelessWidget {
  final Consult consult;

  ListConsultRow(this.consult);
  
  @override
  Widget build(BuildContext context) { 

    //Inicio do Card;
    final consultCard = new Container(
      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(210, 56, 255, 1),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(color: Colors.black,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(consult.name),
            new Text(consult.location),
            new Container(
              color: const Color(0xFF00C6FF),
              width: 24.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0)
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.location_on, size: 14.0,
                  color: Colors.white),
                new Text(
                  consult.distance),
                new Container(width: 24.0),
                new Icon(Icons.flight_land, size: 14.0,
                  color: Colors.red),
                new Text(
                  consult.gravity),
              ],
            )
          ],
        ),
      ),
);

    //Fim do Card;


    return new Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: new FlatButton(
        onPressed: () => _navigateTo(context, consult.id),

        child: new Stack(
          children: <Widget>[
            consultCard,
          ],
        ),
      ),
    );
  }

  _navigateTo(context, String id) {
    print(id);
  }

}