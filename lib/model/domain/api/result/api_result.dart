import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error.dart';

part 'api_result.freezed.dart';
part 'api_result.g.dart';

abstract class ApiResult<T> {}

class ApiResultSuccess<T> extends ApiResult<T> {
  final T? data;

  ApiResultSuccess(this.data);
}

class ApiResultError<T> extends ApiResult<T> {
  final int? code;
  final ApiError error;

  ApiResultError(this.code, this.error);
}

class ApiResultException<T> extends ApiResult<T> {
  final Exception exception;

  ApiResultException(this.exception);
}

@freezed
class ApiGenericResult with _$ApiGenericResult {
  const factory ApiGenericResult({
    bool? success,
    bool? result,
  }) = _ApiGenericResult;

  factory ApiGenericResult.fromJson(Map<String, dynamic> json) =>
      _$ApiGenericResultFromJson(json);
}
