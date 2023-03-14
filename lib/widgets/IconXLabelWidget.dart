import 'package:flutter/material.dart';

import '../constants/constants.dart';

class IconXLabelWidget extends StatelessWidget {
  IconData myIcons;
  
  String myLabel;

  IconXLabelWidget({
    required this.myIcons,
    required this.myLabel,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 4),
          child: Icon(
            myIcons,
            color: kMyColor,
          ),
        ),
        Text(myLabel),
      ],
    );
  }
}
