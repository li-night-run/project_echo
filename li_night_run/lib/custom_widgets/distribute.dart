import 'package:flutter/material.dart';
import 'blocks.dart';

/* 
 * Data Distribution
 * --
 * Handles distribution of data based on specified block types
 * Handles organization of multiple block types into specified configuration
 * Current block types:         2
 * Current configuration types: 2
 */
class Distrbute extends StatelessWidget {
  final List<Blocks> database;
  final int index = 0;

  Distrbute({@required this.database});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...(database).map((block) {
          return Blocks(image: block.image, line: block.line, line1: block.line1, list: block.list,);
        }).toList()
      ],
    );
  }
}

/*
return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(answer['text'], () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
*/
