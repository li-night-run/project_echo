import 'package:flutter/material.dart';
import '../main.dart';
import 'blocks.dart';

/* 
 * Section
 * --
 * Creates a section with list view of Blocks based on
 // see Blocks.dart for more about Blocks
 * 
 * optional:  title
 * required:  database
 * required:  axis orientation
 */
class Section extends StatelessWidget {
  final String title;
  final List<Blocks> database;
  final Axis axis;

  // database should be @required, turned off for testing purposes
  Section({this.title, this.database, @required this.axis});

  @override
  Widget build(BuildContext context) {
    Widget view = database == null || database.isEmpty
        ? ListView(scrollDirection: axis, children: <Widget>[
            Container(
              height: 150,
              width: 200,
              color: Colors.grey[300],
            ),
            Container(
              height: 150,
              width: 200,
              color: Colors.pink[300],
            ),
            Container(
              height: 150,
              width: 200,
              color: Colors.grey[300],
            ),
            Container(
              height: 150,
              width: 200,
              color: Colors.pink[300],
            ),
          ])
        : ListView(
            scrollDirection: axis,
            children: <Widget>[
              ...(database).map((block) {
                return Blocks(
                  image: block.image,
                  line: block.line,
                  line1: block.line1,
                  list: block.list,
                );
              }).toList()
            ],
          );

    return Container(
      height: 150,
        child: Column(children: <Widget>[
      Text(title),
      view,
    ]));
  }
}
