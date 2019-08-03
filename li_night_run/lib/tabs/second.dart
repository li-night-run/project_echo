import 'package:flutter/material.dart';
import 'package:li_night_run/custom_widgets/blocks.dart';
import 'package:li_night_run/custom_widgets/distribute.dart';

// Search Page
class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Pinned'),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Distrbute( /* List<Block> database */),
                    ],
                  )
                ]
              ),
              Row(),
              Icon(
                Icons.search,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                'Second Tab',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}