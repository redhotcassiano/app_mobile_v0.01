//import 'dart:async';
import 'dart:convert';
import 'dart:io';
//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:app_mobile/models/consult.dart';
import 'package:http/http.dart' as http;

class ConsultModel extends Model { 
  final baseUrl = "http://www.megaredhot.com:8080/api";
    
  final header =  {
    HttpHeaders.authorizationHeader: 'Bearer ' + "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImEzNGIxNTdhMDk5MWY2YzE4ZmExN2RkMzkyNTVmMzkxNTI5NmM1NDc5MDYyZTQwZGJkODgxNDFjODkyZTY5NWJjNThkYzgxMjcyMTM0OGZmIn0.eyJhdWQiOiI0IiwianRpIjoiYTM0YjE1N2EwOTkxZjZjMThmYTE3ZGQzOTI1NWYzOTE1Mjk2YzU0NzkwNjJlNDBkYmQ4ODE0MWM4OTJlNjk1YmM1OGRjODEyNzIxMzQ4ZmYiLCJpYXQiOjE1NDU4MzA1NDUsIm5iZiI6MTU0NTgzMDU0NSwiZXhwIjoxNTc3MzY2NTQ1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.toK8TIEEMMLoxuvQFptdVLAhJKLemIiEUdV3kuvfN2rN5ZzIeNZ7T2uJnVQoL09xAWQnNThkQctDeFxcO1dBqB1SIrY-9JFzv_iiVB77ViIvynf9v2KQytmDh6Ei9FKYVAc60JwMK_-7jYuryfJHfIVr8VX_ydpDq21XqJgZQO1KqQlqfOa3wUVROjRh3ATU3EzDG7Kxxa8a8Vz08P84K1qzntWTRUzjUGdGE62J2yUEUTq1yIZj8GqUFuVQd622ULqiA1qQZSwAxzJEsF836kxJtH9ZQp-NaJmgq1eT55o1czbCAdMg8wAqft6aKx0SLGERrEEwYGPSQ1s0Sy_xdS-ac31g1PpJGb8Py5awx_GCVlZHT6o5tubdNHJKH8SkZHWPeXFIOMNrwKc6G_wGX7f1SqpyUG4aymZf5uB9N7EPF4Erhj_aMdfqxRDOBjklwRI9eJX2bFPrqvLZxYut5foDg7hO8chazhaB3NqvQmx7XqFqhrcEauh7jtfZCfhTwv5IgOwujJcX4vEB_2AoEqUCIuH6XiEbbRlO-XVXvhWLBODdr_-XbQqWHs_sBZXe2AiJ9AMGZCRazCKNsw6__FGrWAO4bzk-zm1VzozGzDssBlQwY8GXlrll5Ql5uKJbfFGzGZzFK8WqtdEV3_VzAUAJ-lbbqF-ih0xdlbJqy-E", 
    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.contentTypeHeader : 'application/x-www-form-urlencoded'
  };

  void fetchConsult () {
    final List<Consult> featchConsultList = [];

    http.get(baseUrl + "/consultorios", headers: header).then((http.Response response) {

      print(json.decode(response.body));

      final Map<String, Map<String, dynamic>> consultListData = json.decode(response.body);

      consultListData.forEach((String consultId, Map<String, dynamic> consultData){
        final Consult consult = Consult(
          id: consultId,
          nome: consultData['nome'],
          razaosocial: consultData['razao_social'],
          active: consultData['active']  
        );

        featchConsultList.add(consult);

      });
      
    });
  }

}