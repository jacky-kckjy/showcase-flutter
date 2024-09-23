import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    @JsonKey(name: "status_code") int? statusCode,
    @JsonKey(name: "error") Error? error,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, Object?> data) =>
      _$ApiErrorFromJson(data);
}

@freezed
class Error with _$Error {
  const factory Error({
    @JsonKey(name: "key", unknownEnumValue: ErrorKey.unknownError) required ErrorKey key,
    @JsonKey(name: "key", includeFromJson: false) StackTrace? stackTrace,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> data) => _$ErrorFromJson(data);
}

enum ErrorKey {
  @JsonValue("IN_APP_ERROR")
  inAppError,
  @JsonValue("API_ERROR")
  apiError,
  @JsonValue("INTERNET_ERROR")
  internetError,
  @JsonValue("EXCEPTION_ERROR")
  exceptionError,
  @JsonValue("UNKNOWN_ERROR")
  unknownError,
}
