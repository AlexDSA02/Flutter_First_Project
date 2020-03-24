import 'package:flutter/material.dart';
import 'package:flutterapp2/screens/detail.dart';
import 'package:url_launcher/url_launcher.dart';

class VisiteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052552),
      appBar: AppBar(
        title: Text('Ma carte de visite'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/img/sanji.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.transparent,
                    child: Text(
                      'Alexandre',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Bellota',
                        fontSize: 30.0,
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Bonjour je suis un dev flutter débutant je test pleins de choses la et il me faut un grand texte',
                      style: TextStyle(
                        fontFamily: 'Shadows',
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Detail();
                    }));
                  },
                  child: Text(
                    'En savoir plus',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                      fontFamily: 'Bellota',
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
