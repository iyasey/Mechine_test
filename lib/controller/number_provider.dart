import 'package:finsire_mechine_test/services/api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'number_provider.g.dart';

@riverpod
Future<List?> number(NumberRef ref) async {
  return await ApiServices.getNumber();
}
