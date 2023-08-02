import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/bottom_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyBg,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'Guide'.toUpperCase(),
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
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Text(
                    '“To view the statistics of past matches, you must guess the outcome of the meeting. If you fail to do so, the statistics will not be available. To help with the solution and simplify the process, you can use the hints or the store. If you answer correctly, you will get green cards that you can spend in the store to buy different bonuses. If you\'ve used a hint before, you\'ll get fewer green cards. You will get yellow cards for wrong answers, and red cards for wrong answers after hints. This only affects the your statistics.”',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: blueText1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomMenu(activeIndex: 4));
  }
}
