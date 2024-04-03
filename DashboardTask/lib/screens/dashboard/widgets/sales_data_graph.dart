import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants.dart';

class BarChartWidget extends StatelessWidget {
  final List<SalesData> chartData = [
    SalesData('Jan', 8),
    SalesData('Feb', 25),
    SalesData('Mar', 6),
    SalesData('Apr', 20),
    SalesData('May', 14),
    SalesData('Jun', 18),
  ];

  @override
  Widget build(BuildContext context) {
    List<CartesianSeries> series = [
      ColumnSeries<SalesData, String>(
        dataSource: chartData,
        color: Pallete.secondaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        xValueMapper: (SalesData sales, _) => sales.month,
        yValueMapper: (SalesData sales, _) => sales.sales,
        dataLabelSettings: DataLabelSettings(
          isVisible: true,
          labelAlignment: ChartDataLabelAlignment.top,
          labelPosition: ChartDataLabelPosition.outside,
          textStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ].map((e) => e).toList();

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: series,
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
