import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../res/styles.dart';
import '../widgets/events/event_row.dart';
import '../widgets/stat/stat_table.dart';
import 'hint_page.dart';

class StatPage extends StatelessWidget {
  StatPage({
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
          'Statistics'.toUpperCase(),
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
                  //   color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    EventRow(id: id),
                    SizedBox(height: 20),
                    StatTable(id: id),
                    SizedBox(height: 20),
                    Image.asset('images/place.png'),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => Get.off(HintPage(id: id)),
                      child: Image.asset('images/h2.png'),
                    ),
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
