import 'package:flutter/material.dart';

/* 
 * Custom Block Widgets
 * --
 * Generic layout for two variants of blocks.
 * Three sections are image, main title,
 * and either a subtext or a list.
 */
class Blocks extends StatelessWidget {
  final String image;       // required: location of image
  final String line;        // required: main title
  final String line1;       // optional: sub title
  final List<String> list;  // optional: list content

  Blocks({@required this.image, @required this.line, this.line1, this.list});

  @override
  Widget build(BuildContext context) {
    Widget child;

    // determines if third row of the box is either a
    child = line1.isEmpty ? ListView() : Text(line1);

    return InkWell(
        onTap: () { /* action after container is clicked */ },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
          ),
          child: Column(
            children: <Widget>[Text(line), child],
          ),
        ));
  }
}
