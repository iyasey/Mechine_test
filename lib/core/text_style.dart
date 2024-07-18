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

  static TextStyle get bodyText {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get highlightedText {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get smallText {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }
}
