import 'package:betting1/widgets/shop/shop_item.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../pages/shop_open_page.dart';

class ShopTable extends StatelessWidget {
  const ShopTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ShopItem(
              s1: '1 extra hint day',
              s2: 'you can use 2 hints instead of 1 during the day',
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () => Get.to(ShopOpenPage()),
              child: Image.asset('images/b15.png'),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ShopItem(
              s1: 'coming up day pass',
              s2: 'you can view upcoming matches within 24 hours',
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () => Get.to(ShopOpenPage()),
              child: Image.asset('images/b15.png'),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ShopItem(
              s1: 'Day combo',
              s2: '1 and 2 points at the same time',
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () => Get.to(ShopOpenPage()),
              child: Image.asset('images/b25.png'),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ShopItem(
              s1: '1 extra hint week',
              s2: 'you can use 2 clues instead of 1 during the week',
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () => Get.to(ShopOpenPage()),
              child: Image.asset('images/b75.png'),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ShopItem(
              s1: 'coming up week pass',
              s2: 'you can view upcoming matches during the week',
            ),
            SizedBox(width: 10),
            Image.asset('images/b75.png'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ShopItem(
              s1: 'Week combo',
              s2: '4 and 5 points at the same time',
            ),
            SizedBox(width: 10),
            Image.asset('images/b100.png'),
          ],
        ),
      ],
    );
  }
}
