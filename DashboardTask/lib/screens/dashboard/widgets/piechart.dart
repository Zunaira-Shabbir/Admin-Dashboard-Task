import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/constants.dart';

class PieChartWidget extends StatelessWidget {
  final List<SalesData> chartData = [
    SalesData('Pizza ', 25),
    SalesData('Burger', 20),
    SalesData('Beverages', 10),
    SalesData('Example D', 15),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          SfCircularChart(
            backgroundColor: Pallete.whiteColor,
            legend: Legend(
                isVisible: true, textStyle: TextStyle(color: Colors.blueGrey)),
            series: <CircularSeries>[
              PieSeries<SalesData, String>(
                groupMode: CircularChartGroupMode.value,
                explode: true,
                dataSource: chartData,
                pointRenderMode: PointRenderMode.segment,
                xValueMapper: (SalesData sales, _) => sales.product,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  alignment: ChartAlignment.far,
                  overflowMode: OverflowMode.hide,
                  labelPosition: ChartDataLabelPosition.outside,
                  textStyle: TextStyle(
                    color: Colors.black54,
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
                Text(
                  "",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text("")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String product;
  final double sales;

  SalesData(this.product, this.sales);
}
