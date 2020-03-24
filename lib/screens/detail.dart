import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052552),
      appBar: AppBar(
        title: Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/img/sanji.png'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                color: Colors.transparent,
                child: Text(
                  'titre titre titre titre titre titre titre titre titre titre titre titre titre titre titre \n\neubd yeve fuyeb cuy bezgyjegzf fjeh fvhge vfh eziudh eubd yeve fuyeb cuy bezgyjegzf fjeh fvhge vfh eziudh eubd yeve fuyeb cuy bgzf fjeh fvhge vfh eziudh eubd yeve fuyeb cuy bezgyjegzf fjeh fvhge vfh eziudh eubd yeve fuyeb cuy bge vfh eziudh eubd yeve fuyeb cuy beudybe uybd ytezvduevvfygv df ydv fygv dygfvdgy vfgvd',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'Bellota'),
                ),
              ),
              RaisedButton(
                onPressed: _launchPortfolio,
                child: Text('Voir mon portfolio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _launchPortfolio() async{
    const urlPortfolio = 'https://portfolio-dsa.000webhostapp.com';
    if(await canLaunch(urlPortfolio)){
      await launch(urlPortfolio);
    }
    else{
      throw 'ERROR pour l\'url';
    }
  }
}
