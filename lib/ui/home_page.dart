import 'package:flutter/material.dart';
import 'package:app_mobile/ui/login_page.dart';
import 'package:app_mobile/style/theme.dart' as Theme;

class HomePage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    List items = List<String>.generate(10000, (i) => "Item $i");   
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: /* Text('Menu', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(
                color: Colors.blue,
              ), */
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 130.0,
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                      Positioned(
                        top: 8.0,
                        left: 0.0,
                        child: Text("Menu Edit", 
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
      ),      
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                Theme.Colors.loginGradientStart,
                Theme.Colors.loginGradientEnd
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child:  Container(
          child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
        ),
        
      ),

    );
  }
}