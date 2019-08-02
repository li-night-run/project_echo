import 'package:flutter/material.dart';

// Billing Page
class FourthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.create,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Fourth Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}