import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/events/events_table.dart';
import '../widgets/events/leagues_table.dart';

class EventsLeaguesPage extends StatelessWidget {
  const EventsLeaguesPage({super.key});

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
        body: SafeArea(
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
              SingleChildScrollView(
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 20),
                  //   padding: EdgeInsets.all(20),
                  // color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/leag.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 20),
                      Image.asset('images/past.png'),
                      LeaguesTable()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomMenu(activeIndex: 1));
  }
}
