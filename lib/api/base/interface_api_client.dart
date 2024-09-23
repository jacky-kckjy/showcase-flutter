import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: "")
abstract class ApiClient<T> {
  late T service;
  late Dio client;

  String? get token;

  Map<String, dynamic> get headers;

  ApiClient<T> init();
}
