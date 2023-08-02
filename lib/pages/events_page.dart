import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../res/styles.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/events/events_table.dart';
import 'events_leagues_page.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyBg,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'Events'.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        'images/bg.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Image.asset('images/logo.png'),
                  ],
                ),
                Container(
                  // margin: EdgeInsets.symmetric(vertical: 20),
                  //   padding: EdgeInsets.all(20),
                  // color: Colors.white,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Get.to(EventsLeaguesPage()),
                        child: Image.asset(
                          'images/leag.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: 20),
                      Image.asset('images/past.png'),
                      EventsTable()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomMenu(activeIndex: 1));
  }
}
