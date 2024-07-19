import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/constants/images_constants.dart';
import 'package:finsire_mechine_test/core/dyinamic_size.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget(
      {required this.color,
      required this.image,
      required this.text,
      required this.heading,
      required this.num,
      required this.des1,
      required this.des2,
      required this.des3,
      required this.icn,
      required this.clr,
      required this.clr2});

  final AppColorPalet color;
  final ImagesConstants image;
  final Constants text;
  final String heading;
  final String num;
  final String des1;
  final String des2;
  final String des3;
  final Color clr;
  final String icn;
  final Color clr2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(210),
      height: context.height(220),
      decoration: BoxDecoration(
          color: clr, borderRadius: BorderRadius.circular(context.width(30))),
      child: Padding(
        padding: EdgeInsets.all(context.width(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading,
                  style: AppTextStyles.cardTitle,
                ),
                Container(
                  width: context.width(50),
                  height: context.height(50),
                  child: Icon(Icons.upload),
                  decoration: BoxDecoration(
                    color: clr2,
                    borderRadius: BorderRadius.circular(context.width(18)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                    width: context.width(55),
                    height: context.height(55),
                    child: Image.asset(icn)),
                Text(
                  num,
                  style: AppTextStyles.apiNumber,
                )
              ],
            ),
            Text(
              des1,
              style: AppTextStyles.normalText,
            ),
            Text(
              des2,
              style: AppTextStyles.normalText,
            ),
            Text(
              des3,
              style: AppTextStyles.smallBoldText,
            ),
          ],
        ),
      ),
    );
  }
}
