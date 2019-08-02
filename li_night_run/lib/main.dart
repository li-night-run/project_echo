import 'package:flutter/material.dart';
import './profile.dart';
import './history.dart';
import './billing.dart';
import './search.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


/*
 * Building the Homepage 
 * 
 * 
 */

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(''),
          ),
    ));
  }
}
