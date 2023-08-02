import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../pages/hint_page.dart';
import 'event_row.dart';

class EventsTable extends StatelessWidget {
  const EventsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          InkWell(
            onTap: () => Get.to(HintPage(id: 0)),
            child: EventRow(id: 0),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () => Get.to(HintPage(id: 1)),
            child: EventRow(id: 1),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () => Get.to(HintPage(id: 2)),
            child: EventRow(id: 2),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () => Get.to(HintPage(id: 3)),
            child: EventRow(id: 3),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
