import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';

class H2HRow extends StatelessWidget {
  H2HRow({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          DateFormat('dd.MM.yy').format(DateTime.now()),
          style: TextStyle(
            color: blueText1,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    factorList.list[index].img1,
                    scale: 6,
                  ),
                  SizedBox(width: 10),
                  Text(
                    factorList.list[index].name1.toUpperCase(),
                    style: TextStyle(
                      color: blueText1,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    Random().nextInt(4).toString(),
                    style: TextStyle(
                      color: blueText1,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Divider(color: blueText1),
              Row(
                children: [
                  Image.network(
                    factorList.list[index].img2,
                    scale: 6,
                  ),
                  SizedBox(width: 10),
                  Text(
                    factorList.list[index].name2.toUpperCase(),
                    style: TextStyle(
                      color: blueText1,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    Random().nextInt(4).toString(),
                    style: TextStyle(
                      color: blueText1,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Divider(color: blueText1),
            ],
          ),
        )
      ],
    );
  }
}
