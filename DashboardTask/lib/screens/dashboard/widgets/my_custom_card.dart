import 'package:admin/models/cards.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'custom_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardListView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
            itemHeight: 150,
          ),
          tablet: FileInfoCardListView(
            itemHeight: 150, 
          ),
          desktop: FileInfoCardListView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            itemHeight: 150, 
          ),
        ),
      ],
    );
  }
}

class FileInfoCardListView extends StatelessWidget {
  const FileInfoCardListView({
    Key? key,
    this.crossAxisCount = 4,
    this.itemHeight = 100, 
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double itemHeight;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final double itemWidth = _size.width / crossAxisCount;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var file in demoMyFiles)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: SizedBox(
                width: itemWidth,
                height: itemHeight,
                child: AspectRatio(
                  aspectRatio: childAspectRatio,
                  child: CustomInfoCard(info: file),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
