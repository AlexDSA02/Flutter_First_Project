import 'package:flutter/material.dart';
import 'package:flutterapp2/screens/visit_card.dart';

class HamburgerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Menu Hamburger')),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                repeat: ImageRepeat.repeatY,
                image: AssetImage('assets/img/food.jpg')),
          ),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    child: Text('Salut'),
                    radius: 35.0,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () => Navigator.pop(context),
                      title: Text('Home'),
                    ),
                    Divider(
                      thickness: 2.0,
                    ),
                    ListTile(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return VisiteCard();
                      })),
                      title: Text('Hamburger'),
                    ),
                    Divider(
                      thickness: 2.0,
                    ),
                    ListTile(
                      title: Text('Glace'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
