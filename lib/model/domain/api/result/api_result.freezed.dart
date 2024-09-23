// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiGenericResult _$ApiGenericResultFromJson(Map<String, dynamic> json) {
  return _ApiGenericResult.fromJson(json);
}

/// @nodoc
mixin _$ApiGenericResult {
  bool? get success => throw _privateConstructorUsedError;
  bool? get result => throw _privateConstructorUsedError;

  /// Serializes this ApiGenericResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiGenericResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiGenericResultCopyWith<ApiGenericResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiGenericResultCopyWith<$Res> {
  factory $ApiGenericResultCopyWith(
          ApiGenericResult value, $Res Function(ApiGenericResult) then) =
      _$ApiGenericResultCopyWithImpl<$Res, ApiGenericResult>;
  @useResult
  $Res call({bool? success, bool? result});
}

/// @nodoc
class _$ApiGenericResultCopyWithImpl<$Res, $Val extends ApiGenericResult>
    implements $ApiGenericResultCopyWith<$Res> {
  _$ApiGenericResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiGenericResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiGenericResultImplCopyWith<$Res>
    implements $ApiGenericResultCopyWith<$Res> {
  factory _$$ApiGenericResultImplCopyWith(_$ApiGenericResultImpl value,
          $Res Function(_$ApiGenericResultImpl) then) =
      __$$ApiGenericResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, bool? result});
}

/// @nodoc
class __$$ApiGenericResultImplCopyWithImpl<$Res>
    extends _$ApiGenericResultCopyWithImpl<$Res, _$ApiGenericResultImpl>
    implements _$$ApiGenericResultImplCopyWith<$Res> {
  __$$ApiGenericResultImplCopyWithImpl(_$ApiGenericResultImpl _value,
      $Res Function(_$ApiGenericResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiGenericResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ApiGenericResultImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiGenericResultImpl implements _ApiGenericResult {
  const _$ApiGenericResultImpl({this.success, this.result});

  factory _$ApiGenericResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiGenericResultImplFromJson(json);

  @override
  final bool? success;
  @override
  final bool? result;

  @override
  String toString() {
    return 'ApiGenericResult(success: $success, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGenericResultImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, result);

  /// Create a copy of ApiGenericResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGenericResultImplCopyWith<_$ApiGenericResultImpl> get copyWith =>
      __$$ApiGenericResultImplCopyWithImpl<_$ApiGenericResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiGenericResultImplToJson(
      this,
    );
  }
}

abstract class _ApiGenericResult implements ApiGenericResult {
  const factory _ApiGenericResult({final bool? success, final bool? result}) =
      _$ApiGenericResultImpl;

  factory _ApiGenericResult.fromJson(Map<String, dynamic> json) =
      _$ApiGenericResultImpl.fromJson;

  @override
  bool? get success;
  @override
  bool? get result;

  /// Create a copy of ApiGenericResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiGenericResultImplCopyWith<_$ApiGenericResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
