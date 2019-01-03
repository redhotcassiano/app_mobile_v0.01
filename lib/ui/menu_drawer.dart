import 'package:flutter/material.dart';
import 'package:app_mobile/ui/login_page.dart';

class MenuDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 130.0,
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                      Positioned(
                        top: 8.0,
                        left: 0.0,
                        child: Text("Menu", 
                          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 2.0,
                        child: Column(
                          children: <Widget>[
                             GestureDetector(
                                onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (ctxt) => new LoginPage() )),
                                child: Text("Entre ou Cadastre-se", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),                             
                                
                              ),
                          ],
                        )
                      )
                  ]
                )
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              )
            ),
            ListTile(
              title: Text('Entrar'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (ctxt) => new LoginPage()));
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
              },
            ),
          ],
        ),
      );
  }  
}