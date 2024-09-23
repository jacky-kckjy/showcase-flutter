import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_interceptor.dart';
import 'api_interface.dart';
import 'base/interface_api_client.dart';

class ApiClientImpl implements ApiClient<ApiInterface> {
  final Ref ref;

  ApiClientImpl(this.ref);

  @override
  late Dio client;

  @override
  late ApiInterface service;

  @override
  String? get token => null;

  @override
  Map<String, dynamic> get headers => {
    "content-type": "application/json",
    "accept": "application/json",
  };

  @override
  ApiClient<ApiInterface> init() {
    final baseUrl = dotenv.env['API_BASE_URL']!;
    Dio dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
    ));
    dio.interceptors.add(ApiInterceptor(this));
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (value) {
            log("$value", name: "api");
          },
        ),
      );
    }
    client = dio;
    service = ApiInterface(dio, baseUrl: baseUrl);
    return this;
  }
}