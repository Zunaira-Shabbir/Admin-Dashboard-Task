import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import 'piechart.dart';

class PieChartDetails extends StatefulWidget {
  const PieChartDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<PieChartDetails> createState() => _StorageDetailsState();
}

class _StorageDetailsState extends State<PieChartDetails> {
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
            "Most sold items",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          PieChartWidget(),
        ],
      ),
    );
  }
}
