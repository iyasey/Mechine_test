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
}

@riverpod
ImagesConstants imagesConstants(ImagesConstantsRef ref) {
  return ImagesConstants();
}
