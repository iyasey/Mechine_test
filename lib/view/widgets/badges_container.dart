import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/constants/images_constants.dart';
import 'package:finsire_mechine_test/core/dyinamic_size.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:flutter/material.dart';

class BadgesContainer extends StatelessWidget {
  const BadgesContainer({
    required this.color,
    required this.text,
    required this.image,
  });

  final AppColorPalet color;
  final Constants text;
  final ImagesConstants image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(210),
      height: context.height(218),
      decoration: BoxDecoration(
          color: color.skyblue200,
          borderRadius: BorderRadius.circular(context.width(30))),
      child: Padding(
        padding: EdgeInsets.all(context.width(8)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text.badgesCardTitle,
                  style: AppTextStyles.cardTitle,
                ),
                Container(
                  width: context.width(50),
                  height: context.height(50),
                  child: Icon(Icons.upload),
                  decoration: BoxDecoration(
                    color: color.skyblue2,
                    borderRadius: BorderRadius.circular(context.width(18)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: context.height(5)),
                  child: SizedBox(
                      height: context.height(70),
                      child: Image.asset(image.bulb)),
                ),
                SizedBox(
                    height: context.height(48), child: Image.asset(image.tick)),
                SizedBox(
                    height: context.height(50), child: Image.asset(image.round))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: context.width(10)),
                  child: SizedBox(
                      height: context.height(50),
                      child: Image.asset(image.eight)),
                ),
                SizedBox(
                    height: context.height(48),
                    child: Image.asset(image.bookIcon)),
                SizedBox(
                    height: context.height(50), child: Image.asset(image.like))
              ],
            )
          ],
        ),
      ),
    );
  }
}
