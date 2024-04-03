import 'package:admin/utils/constants.dart';
import 'package:admin/screens/dashboard/widgets/line_chart.dart';
import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';

class LineChartDetails extends StatefulWidget {
  const LineChartDetails({Key? key}) : super(key: key);

  @override
  State<LineChartDetails> createState() => _LineChartDetailsState();
}

class _LineChartDetailsState extends State<LineChartDetails> {
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
            "Total Orders",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          LineChartWidget()
        ],
      ),
    );
  }
}
