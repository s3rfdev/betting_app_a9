import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../pages/events_page.dart';
import '../pages/home_page.dart';
import '../pages/metrics_page.dart';
import '../pages/settings_page.dart';
import '../pages/shop_page.dart';
import '../res/styles.dart';

class BottomMenu extends StatelessWidget {
  BottomMenu({super.key, required this.activeIndex});
  int activeIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(18),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: blueBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => Get.offAll(EventsPage()),
                child: Text(
                  'Events'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: activeIndex == 1 ? Colors.white : blueText),
                ),
              ),
              Container(
                width: 2,
                height: 20,
                color: blueText,
              ),
              InkWell(
                onTap: () => Get.offAll(ShopPage()),
                child: Text(
                  'Shop'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: activeIndex == 2 ? Colors.white : blueText),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => Get.offAll(SettingsPage()),
                child: Text(
                  'Settings'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: activeIndex == 3 ? Colors.white : blueText),
                ),
              ),
              Container(
                width: 2,
                height: 20,
                color: blueText,
              ),
              InkWell(
                onTap: () => Get.offAll(HomePage()),
                child: Text(
                  'Guide'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: activeIndex == 4 ? Colors.white : blueText),
                ),
              ),
              Container(
                width: 2,
                height: 20,
                color: blueText,
              ),
              InkWell(
                onTap: () => Get.offAll(MetricsPage()),
                child: Text(
                  'Metrics'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: activeIndex == 5 ? Colors.white : blueText),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
