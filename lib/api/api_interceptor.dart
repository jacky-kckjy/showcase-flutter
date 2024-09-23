import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

import 'api_interface.dart';
import 'base/interface_api_client.dart';

class ApiInterceptor extends Interceptor {
  final ApiClient<ApiInterface> _apiClient;

  ApiInterceptor(this._apiClient);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = _apiClient.headers;
    super.onRequest(options, handler);
  }

  @override
  Future<dynamic> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    log("onError", name: "api");
    try {
      log("${err.response?.data}", name: "api");
    } on DioException catch (e) {
      log("${e.stackTrace}", name: "api");
    } on TypeError catch (e) {
      log("${e.stackTrace}", name: "api");
    }
    debugPrint("*** Error processed ***");
    return super.onError(err, handler);
  }
}
