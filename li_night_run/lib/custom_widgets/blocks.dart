import 'package:flutter/material.dart';

/* 
 * Custom Block Widgets
 * --
 * Generic layout for two variants of blocks.
 * Three sections are image, main title,
 * and either a subtext or a list.
 */
class Blocks extends StatelessWidget {
  final String image; // required: location of image
  final String line; // required: main title
  final String line1; // optional: sub title
  final List<String> list; // optional: list content

  // image and line should be @required, turned off for testing purposes
  Blocks({this.image, this.line, this.line1, this.list});

  @override
  Widget build(BuildContext context) {
    Widget elem1;
    Widget elem2;

    // determines the type of aesthetic configuration based on optional settings
    if (line1.isEmpty && list.isEmpty) {
      elem1 = Text(line);
      elem2 = null;
      return Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[elem1],
        ),
      );
    } else if (line1.isEmpty) {
      elem2 = ListView();
    } else {
      elem2 = Text(line1);
    }

    return InkWell(
        onTap: () {/* action at container click */},
        child: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
          ),
          child: Column(
            children: <Widget>[elem1, elem2],
          ),
        ));
  }
}
