import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle get subTitle {
    return const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get cardTitle {
    return const TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);
  }

  static TextStyle get apiNumber {
    return const TextStyle(
        fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black);
  }

  static TextStyle get normalText {
    return const TextStyle(fontWeight: FontWeight.normal, color: Colors.black);
  }

  static TextStyle get smallBoldText {
    return const TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);
  }
}
