import 'package:flutter/material.dart';
import 'package:li_night_run/custom_widgets/blocks.dart';

// Profile Page
class FifthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Fifth Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}