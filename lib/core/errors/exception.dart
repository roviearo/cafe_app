import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
abstract class APIException with _$APIException {
  const factory APIException({
    required String message,
    required int statusCode,
    String? errorCode,
  }) = _APIException;
}
