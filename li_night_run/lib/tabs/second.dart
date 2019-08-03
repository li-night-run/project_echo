import 'package:flutter/material.dart';
import '../custom_widgets/section.dart';

// Search Page
class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: 
            Section(title: 'Pinned', axis: Axis.horizontal),
        ),
      ),
    );
  }
}
