import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../res/styles.dart';
import '../widgets/events/event_row.dart';
import 'h2h_page.dart';
import 'hint_page.dart';

class HintOpenPage extends StatelessWidget {
  HintOpenPage({
    super.key,
    required this.id,
  });
  int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBg,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Hint'.toUpperCase(),
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
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    EventRow(id: id),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => Get.off(HintPage(id: id)),
                      child: Image.asset(
                        'images/h.png',
                        scale: 2,
                      ),
                    ),
                    SizedBox(height: 40),
                    Image.asset('images/b1.png', scale: 1),
                    SizedBox(height: 20),
                    Image.asset('images/b2.png', scale: 1),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => Get.to(H2HPage(id: id)),
                      child: Image.asset('images/b3.png', scale: 1),
                    ),
                    Image.asset('images/b4.png', scale: 1),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomMenu(activeIndex: 1),
    );
  }
}
