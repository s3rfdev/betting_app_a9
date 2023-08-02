import 'package:flutter/material.dart';

import '../../res/styles.dart';
import 'stat_row.dart';

class StatTable extends StatelessWidget {
  StatTable({
    super.key,
    required this.id,
  });
  int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          StatRow(title: 'Attacks'),
          Divider(color: blueText1),
          StatRow(title: 'ball safe'),
          Divider(color: blueText1),
          StatRow(title: 'Corners'),
          Divider(color: blueText1),
          StatRow(title: 'Corner f'),
          Divider(color: blueText1),
          StatRow(title: 'Corner h'),
          Divider(color: blueText1),
          StatRow(title: 'Dangerous attacks'),
          Divider(color: blueText1),
          StatRow(title: 'Goals'),
          Divider(color: blueText1),
          StatRow(title: 'Off target'),
          Divider(color: blueText1),
          StatRow(title: 'On target'),
          Divider(color: blueText1),
          StatRow(title: 'Penalties'),
          Divider(color: blueText1),
          StatRow(title: 'Redcards'),
          Divider(color: blueText1),
          StatRow(title: 'Subtitutions'),
          Divider(color: blueText1),
          StatRow(title: 'Yellow Cards'),
          Divider(color: blueText1),
          StatRow(title: 'red Cards'),
          Divider(color: blueText1),
        ],
      ),
    );
  }
}
