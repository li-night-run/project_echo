import 'package:flutter/material.dart';
import '../main.dart';
import 'block.dart';

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
  final List<Block> database;
  final Axis axis;

  // database should be @required, turned off for testing purposes
  Section({this.title, this.database, @required this.axis});

  @override
  Widget build(BuildContext context) {
    Widget view = database == null || database.isEmpty
        ? ListView(scrollDirection: axis, children: <Widget>[
            Block(
              image:
                  'https://scontent-lga3-1.cdninstagram.com/vp/580838019951159410138acea99ad0b9/5DCA52BA/t51.2885-15/e35/61467097_142658200134081_6309863923507155602_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com',
              title: 'title',
              subtitle: 'subtitle',
            ),
            Block(
              image:
                  'https://scontent-lga3-1.cdninstagram.com/vp/580838019951159410138acea99ad0b9/5DCA52BA/t51.2885-15/e35/61467097_142658200134081_6309863923507155602_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com',
              title: 'title',
              subtitle: 'subtitle',
            ),
            Block(
              image:
                  'https://scontent-lga3-1.cdninstagram.com/vp/580838019951159410138acea99ad0b9/5DCA52BA/t51.2885-15/e35/61467097_142658200134081_6309863923507155602_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com',
              title: 'title',
              subtitle: 'subtitle',
            ),
            Block(
              image:
                  'https://scontent-lga3-1.cdninstagram.com/vp/580838019951159410138acea99ad0b9/5DCA52BA/t51.2885-15/e35/61467097_142658200134081_6309863923507155602_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com',
              title: 'title',
              subtitle: 'subtitle',
            ),
          ])
        : ListView(
            scrollDirection: Axis.horizontal,
            children: <Block>[
              ...(database).map((block) {
                return Block(
                  image: block.image,
                  title: block.title,
                  subtitle: block.subtitle,
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
