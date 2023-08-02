import 'dart:math';

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class StatRow extends StatelessWidget {
  StatRow({
    super.key,
    required this.title,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${Random().nextInt(10)}',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: blueText1,
          ),
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: blueText1,
          ),
        ),
        Text(
          '${Random().nextInt(10)}',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: blueText1,
          ),
        ),
      ],
    );
  }
}
