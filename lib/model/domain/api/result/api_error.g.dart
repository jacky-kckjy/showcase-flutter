// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      statusCode: (json['status_code'] as num?)?.toInt(),
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'error': instance.error,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      key: $enumDecode(_$ErrorKeyEnumMap, json['key'],
          unknownValue: ErrorKey.unknownError),
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'key': _$ErrorKeyEnumMap[instance.key]!,
    };

const _$ErrorKeyEnumMap = {
  ErrorKey.inAppError: 'IN_APP_ERROR',
  ErrorKey.apiError: 'API_ERROR',
  ErrorKey.internetError: 'INTERNET_ERROR',
  ErrorKey.exceptionError: 'EXCEPTION_ERROR',
  ErrorKey.unknownError: 'UNKNOWN_ERROR',
};
