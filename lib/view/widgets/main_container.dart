import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/constants/images_constants.dart';
import 'package:finsire_mechine_test/core/dyinamic_size.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:finsire_mechine_test/view/widgets/api_number_widget.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
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
      width: double.infinity,
      height: context.height(230),
      decoration: BoxDecoration(
        color: color.yellow300,
        borderRadius: BorderRadius.circular(context.width(28)),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.width(13)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text.cardTitle,
                  style: AppTextStyles.cardTitle,
                ),
                Container(
                  width: context.width(50),
                  height: context.height(50),
                  child: Icon(Icons.upload),
                  decoration: BoxDecoration(
                    color: color.yellow2,
                    borderRadius:
                        BorderRadius.circular(context.width(18)),
                  ),
                ),
              ],
            ),
            SizedBox(height: context.height(10)),
            Row(
              children: [
                SizedBox(
                  height: context.height(60),
                  child: Image.asset(
                    image.bookIcon,
                  ),
                ),
                SizedBox(width: context.width(10)),
                ApiNumberWidget(color: color),
                SizedBox(width: context.width(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text.cardDescription,
                      style: AppTextStyles.normalText,
                    ),
                    Text(
                      text.cardBoldDescription,
                      style: AppTextStyles.smallBoldText,
                    ),
                  ],
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              backgroundColor: Colors.white,
              minHeight: context.height(9),
              borderRadius: BorderRadius.circular(context.width(10)),
            ),
            SizedBox(height: context.height(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: context.width(15),
                  backgroundImage: AssetImage(image.firstImage),
                ),
                SizedBox(width: context.width(15)),
                CircleAvatar(
                  backgroundImage: AssetImage(image.secondImage),
                  radius: context.width(15),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(image.titleImage),
                  radius: context.width(15),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(image.thirdImage),
                  radius: context.width(15),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(image.fifthImage),
                        radius: context.width(15),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(image.fourthImage),
                      radius: context.width(15),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(image.sixthImage),
                  radius: context.width(15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
