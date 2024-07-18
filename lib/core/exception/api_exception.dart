import 'package:finsire_mechine_test/core/exception/exception.dart';

final class ApiException extends BaseException {
  const ApiException(String? message)
      : super(message: message ?? 'Unknown StorageException');
}