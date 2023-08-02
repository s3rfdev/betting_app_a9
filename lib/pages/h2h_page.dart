import 'package:betting1/pages/stat_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../res/styles.dart';
import '../widgets/h2h/h2h_table.dart';
import 'hint_page.dart';

class H2HPage extends StatelessWidget {
  H2HPage({
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
          'H2H'.toUpperCase(),
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
                    InkWell(
                      onTap: () => Get.to(StatPage(id: id)),
                      child: H2HTable(),
                    ),
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
