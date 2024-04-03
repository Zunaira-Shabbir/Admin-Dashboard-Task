import 'package:admin/models/cards.dart';
import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/constants.dart';

class CustomInfoCard extends StatelessWidget {
  const CustomInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CustomCards info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Pallete.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 129, 171, 245),
              borderRadius: const BorderRadius.all(Radius.circular(35)),
            ),
            child: SvgPicture.asset(
              info.svgSrc!,
              height: 50,
              colorFilter:
                  ColorFilter.mode(info.color ?? Colors.white, BlendMode.srcIn),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info.t1!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Pallete.bluegreyColor),
              ),
              Text(
                info.t2!,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Pallete.secondaryColor, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    info.t3!,
                    style: TextStyle(color: Colors.green, fontSize: 10),
                  ),
                  SizedBox(width: 4),
                  Text(
                    ' Month ',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
