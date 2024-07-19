import 'package:finsire_mechine_test/controller/number_provider.dart';
import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/constants/images_constants.dart';
import 'package:finsire_mechine_test/core/dyinamic_size.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:finsire_mechine_test/view/widgets/api_number_widget.dart';
import 'package:finsire_mechine_test/view/widgets/first_row.dart';
import 'package:finsire_mechine_test/view/widgets/main_container.dart';
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
          ],
        ),
      ),
    );
  }
}

