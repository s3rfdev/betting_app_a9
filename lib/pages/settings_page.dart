import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/on_off.dart';
import 'hint_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyBg,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'Settings'.toUpperCase(),
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
                  // color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'SOUND'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: blueText1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      OnOff(isOn: true),
                      SizedBox(height: 20),
                      Text(
                        'my stats'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: blueText1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      OnOff(isOn: true),
                      SizedBox(height: 20),
                      Text(
                        'make the “Events" \nthe start screen'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: blueText1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      OnOff(isOn: true),
                      SizedBox(height: 40),
                      InkWell(
                        onTap: () => Get.off(HintPage(id: 0)),
                        child: Image.asset('images/h2.png'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomMenu(activeIndex: 3));
  }
}
