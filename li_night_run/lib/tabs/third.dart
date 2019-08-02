import 'package:flutter/material.dart';

// History Page
class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.bookmark,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Third Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}