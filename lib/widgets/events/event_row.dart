import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';

class EventRow extends StatelessWidget {
  EventRow({
    super.key,
    required this.id,
  });
  int id;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                factorList.list[id].img1,
                scale: 4,
              ),
              Text(
                factorList.list[id].name1.toUpperCase(),
                style: TextStyle(
                  fontSize: 12,
                  color: blueText1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                DateFormat('dd.MM.yy').format(DateTime.now()),
                style: TextStyle(
                  fontSize: 14,
                  color: blueText1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${Random().nextInt(24)}:${Random().nextInt(5)}0',
                style: TextStyle(
                  fontSize: 14,
                  color: blueText1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              //Text(factorList.list[0].name1)
            ],
          ),
        ),
        Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                factorList.list[id].img2,
                scale: 4,
              ),
              Text(
                factorList.list[id].name2.toUpperCase(),
                style: TextStyle(
                  fontSize: 12,
                  color: blueText1,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
