import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/constants/images_constants.dart';
import 'package:finsire_mechine_test/core/dyinamic_size.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({
    
    required this.image,
    required this.text,
    required this.color,
  });

  final ImagesConstants image;
  final Constants text;
  final AppColorPalet color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.width(50),
          height: context.height(70),
          child: Image.asset(
            image.bookImage,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: context.width(15)),
          child: Text(
            text.subTitle,
            style: AppTextStyles.subTitle,
          ),
        ),
      const  Spacer(),
        Container(
          width: context.width(50),
          height: context.height(50),
          child: Icon(Icons.add),
          decoration: BoxDecoration(
              color: color.black200,
              borderRadius: BorderRadius.circular(context.width(18))),
        )
      ],
    );
  }
}