import 'package:flutter/material.dart';
import 'package:flutterapp2/screens/detail.dart';
import 'package:flutterapp2/screens/get_info.dart';
import 'package:flutterapp2/screens/hamburger.dart';
import 'package:flutterapp2/screens/url.dart';
import 'screens/visit_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma carte de visite',
      home: VisiteCard(),
    );
  }
}
