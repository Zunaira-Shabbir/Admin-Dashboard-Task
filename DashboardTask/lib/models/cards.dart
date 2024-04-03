import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';

class CustomCards {
  final String? svgSrc, t1, t2, t3;
  final int? numOfFiles, percentage;
  final Color? color;

  CustomCards({
    this.svgSrc,
    this.t1,
    this.t3,
    this.t2,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CustomCards(
    t1: "Earning",
    t3: "37.8%",
    numOfFiles: 1328,
    svgSrc: "assets/images/dollar.png",
    t2: "192K",
    color: Pallete.primaryColor,
    percentage: 35,
  ),
  CustomCards(
    t1: "Profit",
    t3: "2%",
    numOfFiles: 1328,
    svgSrc: "assets/images/graph.png",
    t2: "2.4K",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CustomCards(
    t1: "Expenses",
    t3: "10",
    numOfFiles: 1328,
    svgSrc: "assets/images/money.png",
    t2: "89K",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
];
