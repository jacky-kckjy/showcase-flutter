import 'package:json_annotation/json_annotation.dart';

class ApiDatetimeConverter extends JsonConverter<DateTime, String> {
  const ApiDatetimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}