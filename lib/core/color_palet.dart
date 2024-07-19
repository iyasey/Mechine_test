import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'color_palet.g.dart';

class AppColorPalet {
  final black200 = const Color(0xFF343645);
  final yellow300 = const Color(0xFFfede67);
  final yellow2 = const Color(0xFFf4c43e);
  final orangelite = const Color(0xFFff9a62);
  final darkOrange = const Color(0xFFe9844c);
  final orange2 = const Color(0xFFf4c43e);
  final greenlite = const Color(0xFFb6f36a);
  final green2 = const Color(0xFF96e13e);
  final violet200 = const Color(0xFFc9a0fe);
  final violet2 = const Color(0xFFb983fd);
  final skyblue200 = const Color(0xFF94dbfb);
  final skyblue2 = const Color(0xFF6ccaee);
  final grey200 = const Color(0xFF788097);
  final grey2 = const Color(0xFF323443);
  final black = Colors.black;
}

@riverpod
AppColorPalet appColorPalet(AppColorPaletRef ref) {
  return AppColorPalet();
}
