import 'package:flutter/material.dart';

/* 
 * Custom Block Widgets
 * --
 * Generic layout for two variants of blocks.
 * Three sections are image, main title,
 * and either a subtext or a list.
 */
class Block extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  // image and title should be @required, turned off for testing purposes
  Block({this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    Widget tile;

    // determines the type of aesthetic configuration based on optional settings
    tile = subtitle != null
            ? Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.all(20),
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      alignment: Alignment.center),
                ),
                child: Text(title))
            : Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.all(20),
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      alignment: Alignment.center),
                ),
                child: Text(title))

        /*Wrap(children: <Widget>[
            Image.asset(image),
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ])*/
        ;

    return Card(
        child: InkWell(
      onTap: (() {
        print('tapped');
      }),
      child: tile,
    ));
  }
}
