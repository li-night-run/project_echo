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
  final String line; // required: main line
  final String line1; // optional:
  final List<String> list;

  Blocks({@required this.image, @required this.line, this.line1, this.list});

  @override
  Widget build(BuildContext context) {
    Widget child;

    // determines if third row of the box is either a subtext or a list
    if (line1.isEmpty) {
      child = ListView();
    } else {
      child = Text(line1);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image)),
      ),
      child: Column(
        children: <Widget>[Text(line), child],
      ),
    );
  }
}
