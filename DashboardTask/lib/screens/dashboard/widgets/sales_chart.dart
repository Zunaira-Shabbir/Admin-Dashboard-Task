import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'sales_data_graph.dart';

class BarChartDetails extends StatefulWidget {
  const BarChartDetails({Key? key}) : super(key: key);

  @override
  State<BarChartDetails> createState() => _BarChartDetailsState();
}

class _BarChartDetailsState extends State<BarChartDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Pallete.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Weekly Sales",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          // Chart(),
          // BarChartWidget()
          BarChartWidget()
          // SalesDataGraph()
        ],
      ),
    );
  }
}
