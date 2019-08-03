import 'package:flutter/material.dart';
import '../custom_widgets/section.dart';
import '../custom_widgets/block.dart';

// Search Page
class SecondTab extends StatelessWidget {

  // sample data
  List<Block> sample = [Block(title: 'cow',), Block(title: 'pig',), Block(title: 'goat',), Block(title: 'rain',)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
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
          ]),
    );
  }
}
