import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenUrl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Url appli'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: _lauchlink,
          child: Text('Lancer l\'url'),
        ),
      ),
    );
  }
  void _lauchlink() async{
    const urlGoogle = 'http://google.com';
    if(await canLaunch(urlGoogle)){
      await launch(urlGoogle);
    }
    else{
      throw 'ERROR pour l\'url';
    }
  }
}
