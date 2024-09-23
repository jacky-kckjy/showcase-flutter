import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../model/domain/api/result/api_error.dart';
import '../model/domain/api/result/api_response_type.dart';
import '../model/domain/api/result/api_result.dart';
import '../model/domain/api/result/api_status.dart';
import '../model/domain/main/resource.dart';

/// This class is to handle the API response and return the result in [Resource] format.
class ApiResponseHandler {
  Future<Resource<T>> handleResult<T>(
    ApiResult<T> result,
  ) async {
    if (result is ApiResultSuccess) {
      // API success
      return Resource(
        ApiStatus.success,
        data: (result as ApiResultSuccess<T>).data!,
      );
    } else if (result is ApiResultError) {
      // API error
      final errorResult = result as ApiResultError;
      final error = errorResult.error;
      return Resource(
        ApiStatus.error,
        error: error.copyWith(statusCode: errorResult.code),
      );
    } else {
      // unexpected error
      return Resource(
        ApiStatus.error,
        error: ApiError(
          statusCode: ApiResponseType.unknown.code,
          error: const Error(key: ErrorKey.inAppError),
        ),
      );
    }
  }
}

/// This extension is to handle the API response and return the result in [Resource] format.
/// converting [ApiResult] to [Resource]
extension _ApiResultExtension<T> on Future<ApiResult<T>> {
  Future<Resource<T>> handleResult<T>() async {
    final result = await this;
    if (result is ApiResultSuccess) {
      // API success
      return Future.value(
        Resource(
          ApiStatus.success,
          data: (result as ApiResultSuccess<T>).data,
        ),
      );
    } else if (result is ApiResultError) {
      // API error
      final errorResult = result as ApiResultError;
      final error = errorResult.error;
      return Future.value(
        Resource(
          ApiStatus.error,
          error: error.copyWith(statusCode: errorResult.code),
        ),
      );
    } else {
      // unexpected error
      return Future.value(
        Resource(
          ApiStatus.error,
          error: ApiError(
            statusCode: ApiResponseType.unknown.code,
            error: const Error(key: ErrorKey.inAppError),
          ),
        ),
      );
    }
  }
}

extension ApiExtension<T> on Future<T> {
  Future<Resource<T>> call() async {
    return await _call().handleResult();
  }

  Future<ApiResult<T>> _call() async {
    try {
      return await then((value) {
        return ApiResultSuccess(value);
      });
    } catch (e) {
      log("${e.runtimeType} error: ${e.toString()}", name: "api");
      if (e is TypeError) {
        log("type error: ${e.stackTrace}", name: "api");
      }
      if (e is DioException) {
        log(e.stackTrace.toString(), name: "api");
        switch (e.type) {
          case DioExceptionType.badResponse:
            try {
              final response = ApiError.fromJson(e.response?.data);
              return ApiResultError(
                e.response?.statusCode ?? ApiResponseType.fail.code,
                response,
              );
            } catch (e) {
              return ApiResultError(
                ApiResponseType.unknown.code,
                ApiError(
                  statusCode: ApiResponseType.unknown.code,
                  error: const Error(key: ErrorKey.inAppError),
                ),
              );
            }
          case DioExceptionType.badCertificate:
          case DioExceptionType.connectionError:
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.receiveTimeout:
          print("${e.type}");
          print("${e.error}");

          log("ERROR!!! Server timeout", name: "api");
            return ApiResultError(
              ApiResponseType.timeout.code,
              ApiError(
                statusCode: ApiResponseType.timeout.code,
                error: Error(
                  key: ErrorKey.apiError,
                  stackTrace: e.stackTrace,
                ),
              ),
            );
          case DioExceptionType.cancel:
          case DioExceptionType.unknown:
            if (e.error is SocketException || e.error is TimeoutException) {
              log("ERROR!!! Internet disconnection", name: "api");
              return ApiResultError(
                ApiResponseType.internetDisconnection.code,
                ApiError(
                  statusCode: ApiResponseType.internetDisconnection.code,
                  error: Error(
                    key: ErrorKey.internetError,
                    stackTrace: e.stackTrace,
                  ),
                ),
              );
            }
        }
      }
      return ApiResultError(
        ApiResponseType.unknown.code,
        ApiError(
          statusCode: ApiResponseType.unknown.code,
          error: const Error(key: ErrorKey.unknownError),
        ),
      );
    }
  }
}
