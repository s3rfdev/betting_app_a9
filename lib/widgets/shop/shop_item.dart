import 'package:flutter/material.dart';

import '../../res/styles.dart';

class ShopItem extends StatelessWidget {
  ShopItem({
    super.key,
    required this.s1,
    required this.s2,
  });
  String s1, s2;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 270,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 80,
            width: 120,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: blueText,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              s1.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: blueBg,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 120,
            padding: EdgeInsets.all(10),
            child: Text(
              s2,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: blueText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
