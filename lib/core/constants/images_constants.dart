import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'images_constants.g.dart';

class ImagesConstants {
  final titleImage = "assets/images/images.jpeg";
  final firstImage = "assets/images/images (1).jpeg";
  final secondImage = "assets/images/images (2).jpeg";
  final thirdImage = "assets/images/images (3).jpeg";
  final fourthImage = "assets/images/images (4).jpeg";
  final fifthImage = "assets/images/images (5).jpeg";
  final sixthImage = "assets/images/images (6).jpeg";
  final bookImage = "assets/images/81oHM-dzefL._SY466_.jpg";
  final bookIcon =
      "assets/images/Screenshot_2024-07-19_011606-removebg-preview.png";
  final clock =
      "assets/images/Screenshot_2024-07-19_013939-removebg-preview.png";
  final hotRelod =
      "assets/images/Screenshot_2024-07-19_014117-removebg-preview.png";
  final king =
      "assets/images/Screenshot_2024-07-19_014207-removebg-preview.png";
  final bulb =
      "assets/images/Screenshot_2024-07-19_014250-removebg-preview.png";
  final tick =
      "assets/images/Screenshot_2024-07-19_014332-removebg-preview (1).png";
  final round =
      "assets/images/Screenshot_2024-07-19_014413-removebg-preview.png";
  final eight =
      "assets/images/Screenshot_2024-07-19_014527-removebg-preview.png";
  final like =
      "assets/images/Screenshot_2024-07-19_014732-removebg-preview.png";
      
}

@riverpod
ImagesConstants imagesConstants(ImagesConstantsRef ref) {
  return ImagesConstants();
}
