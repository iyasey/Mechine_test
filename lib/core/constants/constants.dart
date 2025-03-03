import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'constants.g.dart';

class Constants {
  final mainTitle = "Amy's reader stats";
  final subTitle = "War and Peace";
  final cardTitle = "PROGRESS";
  final cardDescription = "Out of 1,225 pages";
  final cardBoldDescription = "#5 among friends";
  final timeCardTitle = "TIME";
  final timeCardTime = "6:24";
  final timeCardDescription = "Global avg.read time";
  final timeCardDescription2 = "for your progress 7:28";
  final timeCardBoldDescription = "23% faster";
  final streakCardTitle = "STREAK";
  final streakCardNumber = "7";
  final streakCardDescription = "Day streak,come back";
  final streakCardDescription2 = "tomorrow to keep it up!";
  final streakCardBoldDescription = "19% more consistent";
  final levelCardTitle = "LEVEL";
  final levelCardNumber = "2";
  final levelCardDescription = "145 reader points to";
  final levelCardDescription2 = "level up!";
  final levelCardBold = "Top 5% for this book";
  final badgesCardTitle = "Badges";
  final addFriends = "Add friends";
}

@riverpod
Constants textConstants(TextConstantsRef ref) {
  return Constants();
}
