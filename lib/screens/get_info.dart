import 'package:flutter/material.dart';


class GetInfo extends StatefulWidget {
  @override
  _GetInfoState createState() => _GetInfoState();
}

class _GetInfoState extends State<GetInfo > {
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (valeurCapturer){
              setState(() {
                _text=valeurCapturer;
              });
            },
          ),
          Text(_text),
        ],
      ),
    );
  }
}

