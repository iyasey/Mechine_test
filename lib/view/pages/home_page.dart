import 'package:finsire_mechine_test/controller/number_provider.dart';
import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/constants/images_constants.dart';
import 'package:finsire_mechine_test/core/dyinamic_size.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:finsire_mechine_test/view/widgets/api_number_widget.dart';
import 'package:finsire_mechine_test/view/widgets/badges_container.dart';
import 'package:finsire_mechine_test/view/widgets/first_row.dart';
import 'package:finsire_mechine_test/view/widgets/main_container.dart';
import 'package:finsire_mechine_test/view/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = ref.watch(imagesConstantsProvider);
    final text = ref.watch(textConstantsProvider);
    final color = ref.watch(appColorPaletProvider);
    final number = ref.watch(numberProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image.titleImage),
            ),
            Padding(
              padding: EdgeInsets.only(left: context.width(8)),
              child: Text(text.mainTitle),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(context.width(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FirstRow(image: image, text: text, color: color),
            MainContainer(color: color, text: text, image: image),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeWidget(
                  color: color,
                  image: image,
                  text: text,
                  heading: text.timeCardTitle,
                  num: text.timeCardTime,
                  des1: text.timeCardDescription,
                  des2: text.timeCardDescription2,
                  des3: text.timeCardBoldDescription,
                  clr: color.orangelite,
                  icn: image.clock,
                  clr2: color.darkOrange,
                ),
                TimeWidget(
                    color: color,
                    image: image,
                    text: text,
                    heading: text.streakCardTitle,
                    num: text.streakCardNumber,
                    des1: text.streakCardDescription,
                    des2: text.streakCardDescription2,
                    des3: text.streakCardBoldDescription,
                    icn: image.hotRelod,
                    clr: color.greenlite,
                    clr2: color.green2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeWidget(
                    color: color,
                    image: image,
                    text: text,
                    heading: text.levelCardTitle,
                    num: text.levelCardNumber,
                    des1: text.levelCardDescription,
                    des2: text.levelCardDescription2,
                    des3: text.levelCardBold,
                    icn: image.king,
                    clr: color.violet200,
                    clr2: color.violet2),
                BadgesContainer(color: color, text: text, image: image),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(context.width(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: context.width(340),
                    height: context.height(60),
                    decoration: BoxDecoration(
                        color: color.grey200,
                        borderRadius: BorderRadius.circular(context.width(20))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text(
                            text.addFriends,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: context.width(50),
                    height: context.height(50),
                    child: Icon(Icons.upload),
                    decoration: BoxDecoration(
                      color: color.grey2,
                      borderRadius: BorderRadius.circular(context.width(18)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
