import 'package:admin/utils/constants.dart';
import 'package:admin/screens/dashboard/widgets/bar_chart.dart';
import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';

class ThinBarChartDetails extends StatefulWidget {
  const ThinBarChartDetails({Key? key}) : super(key: key);

  @override
  State<ThinBarChartDetails> createState() => _ThinBarChartDetailsState();
}

class _ThinBarChartDetailsState extends State<ThinBarChartDetails> {
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
            "Total Sales (monthly)",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          ThinBarChartWidget()
        ],
      ),
    );
  }
}
