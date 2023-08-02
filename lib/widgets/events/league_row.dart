import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/events_page.dart';
import '../../res/styles.dart';

class LeagueRow extends StatelessWidget {
  LeagueRow({
    super.key,
    required this.id,
  });
  int id;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(EventsPage()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/l$id.png'),
          SizedBox(width: 10),
          Text(
            'League $id',
            style: TextStyle(
              color: blueText1,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
