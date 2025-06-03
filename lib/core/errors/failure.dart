import 'package:freezed_annotation/freezed_annotation.dart';

import 'exception.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();

  const factory Failure.api({
    required String message,
    required int statusCode,
    String? errorCode,
  }) = APIFailure;

  factory Failure.fromException(APIException exception) => Failure.api(
    message: exception.message,
    statusCode: exception.statusCode,
    errorCode: exception.errorCode,
  );

  String get errorMessage => '$statusCode Error: $message';
}
