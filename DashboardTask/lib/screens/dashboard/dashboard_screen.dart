import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/widgets/bar_chart_details.dart';
import 'package:admin/screens/dashboard/widgets/my_custom_card.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'widgets/header.dart';
import 'widgets/line_chart_details.dart';
import 'widgets/sales_chart.dart';
import 'widgets/piechart_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Expanded(
              child: ListView(
                children: [
                  MyFiles(),
                  SizedBox(height: defaultPadding),
                  if (Responsive.isMobile(context))
                    Column(
                      children: [
                        PieChartDetails(),
                        SizedBox(height: defaultPadding),
                        BarChartDetails(),
                        SizedBox(height: defaultPadding),
                        LineChartDetails(),
                        SizedBox(height: defaultPadding),
                        ThinBarChartDetails(),
                      ],
                    ),
                  if (Responsive.isDesktop(context) ||
                      Responsive.isTablet(context))
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              PieChartDetails(),
                              SizedBox(height: defaultPadding),
                              LineChartDetails(),
                            ],
                          ),
                        ),
                        SizedBox(width: defaultPadding),
                        Expanded(
                          child: Column(
                            children: [
                              BarChartDetails(),
                              SizedBox(height: defaultPadding),
                              ThinBarChartDetails(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: defaultPadding),
                  SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
