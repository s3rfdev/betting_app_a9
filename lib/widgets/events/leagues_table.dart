import 'package:flutter/material.dart';

import 'league_row.dart';

class LeaguesTable extends StatelessWidget {
  const LeaguesTable({super.key});

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
          SizedBox(height: 30),
          LeagueRow(id: 1),
          SizedBox(height: 10),
          LeagueRow(id: 2),
          SizedBox(height: 10),
          LeagueRow(id: 3),
          SizedBox(height: 10),
          LeagueRow(id: 4),
          SizedBox(height: 10),
          LeagueRow(id: 5),
          SizedBox(height: 10),
          LeagueRow(id: 6),
          SizedBox(height: 10),
          LeagueRow(id: 7),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
