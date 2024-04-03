import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants.dart';

class LineChartWidget extends StatelessWidget {
  final List<SalesData> chartData = [
    SalesData('Jan', 8),
    SalesData('Feb', 10),
    SalesData('Mar', 6),
    SalesData('Apr', 12),
    SalesData('May', 14),
    SalesData('Jun', 18),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          SfCartesianChart(
            backgroundColor: Pallete.whiteColor,
            primaryXAxis: CategoryAxis(),
            series: _getSeries(),
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

  List<CartesianSeries> _getSeries() {
    List<CartesianSeries> series = [
      LineSeries<SalesData, String>(
        dataSource: chartData,
        color: Pallete.primaryColor,
        xValueMapper: (SalesData sales, _) => sales.month,
        yValueMapper: (SalesData sales, _) => sales.sales,
        dataLabelSettings: DataLabelSettings(
          isVisible: true,
          labelAlignment: ChartDataLabelAlignment.top,
          labelPosition: ChartDataLabelPosition.outside,
          textStyle: TextStyle(
            color: Colors.black26,
          ),
        ),
      ),
    ];
    return series;
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
