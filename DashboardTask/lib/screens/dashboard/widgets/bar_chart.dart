import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants.dart';

class ThinBarChartWidget extends StatelessWidget {
  final List<SalesData> chartData = [
    SalesData('Jan', 8),
    SalesData('Feb', 40),
    SalesData('Mar', 6),
    SalesData('Apr', 36),
    SalesData('May', 24),
    SalesData('Jun', 18),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <CartesianSeries>[
              ColumnSeries<SalesData, String>(
                color: Pallete.secondaryColor.withOpacity(0.8),
                width: 0.05, // Adjgust the width here
                dataSource: chartData, trackColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                xValueMapper: (SalesData sales, _) => sales.month,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: DataLabelSettings(
                  isVisible: false,
                  labelAlignment: ChartDataLabelAlignment.top,
                  labelPosition: ChartDataLabelPosition.outside,
                  textStyle: TextStyle(
                    color: Pallete.greyTwo,
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
