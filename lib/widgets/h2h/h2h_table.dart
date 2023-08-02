import 'package:flutter/material.dart';

import 'h2h_row.dart';

class H2HTable extends StatelessWidget {
  H2HTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2HRow(index: 0),
          H2HRow(index: 1),
          H2HRow(index: 2),
          H2HRow(index: 3),
        ],
      ),
    );
  }
}
