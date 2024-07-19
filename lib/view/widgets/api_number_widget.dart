import 'package:finsire_mechine_test/controller/number_provider.dart';
import 'package:finsire_mechine_test/core/color_palet.dart';
import 'package:finsire_mechine_test/core/constants/constants.dart';
import 'package:finsire_mechine_test/core/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiNumberWidget extends ConsumerWidget {
  const ApiNumberWidget({
    super.key,
    required this.color,
  });

  final AppColorPalet color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(textConstantsProvider);
    final number = ref.watch(numberProvider);

    return number.when(
        data: (data) => Text(
              data![0].toString(),
              style: AppTextStyles.apiNumber,
            ),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        error: (error, stackTrace) => Center(
              child: Text(
                error.toString(),
              ),
            ));
  }
}
