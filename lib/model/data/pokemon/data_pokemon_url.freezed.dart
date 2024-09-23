// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonUrlData _$PokemonUrlDataFromJson(Map<String, dynamic> json) {
  return _PokemonUrlData.fromJson(json);
}

/// @nodoc
mixin _$PokemonUrlData {
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonUrlData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonUrlData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonUrlDataCopyWith<PokemonUrlData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonUrlDataCopyWith<$Res> {
  factory $PokemonUrlDataCopyWith(
          PokemonUrlData value, $Res Function(PokemonUrlData) then) =
      _$PokemonUrlDataCopyWithImpl<$Res, PokemonUrlData>;
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class _$PokemonUrlDataCopyWithImpl<$Res, $Val extends PokemonUrlData>
    implements $PokemonUrlDataCopyWith<$Res> {
  _$PokemonUrlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonUrlData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonUrlDataImplCopyWith<$Res>
    implements $PokemonUrlDataCopyWith<$Res> {
  factory _$$PokemonUrlDataImplCopyWith(_$PokemonUrlDataImpl value,
          $Res Function(_$PokemonUrlDataImpl) then) =
      __$$PokemonUrlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class __$$PokemonUrlDataImplCopyWithImpl<$Res>
    extends _$PokemonUrlDataCopyWithImpl<$Res, _$PokemonUrlDataImpl>
    implements _$$PokemonUrlDataImplCopyWith<$Res> {
  __$$PokemonUrlDataImplCopyWithImpl(
      _$PokemonUrlDataImpl _value, $Res Function(_$PokemonUrlDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonUrlData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PokemonUrlDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonUrlDataImpl extends _PokemonUrlData {
  const _$PokemonUrlDataImpl({@JsonKey(name: "url") required this.url})
      : super._();

  factory _$PokemonUrlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonUrlDataImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'PokemonUrlData(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonUrlDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PokemonUrlData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonUrlDataImplCopyWith<_$PokemonUrlDataImpl> get copyWith =>
      __$$PokemonUrlDataImplCopyWithImpl<_$PokemonUrlDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonUrlDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonUrlData extends PokemonUrlData {
  const factory _PokemonUrlData(
      {@JsonKey(name: "url") required final String url}) = _$PokemonUrlDataImpl;
  const _PokemonUrlData._() : super._();

  factory _PokemonUrlData.fromJson(Map<String, dynamic> json) =
      _$PokemonUrlDataImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String get url;

  /// Create a copy of PokemonUrlData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonUrlDataImplCopyWith<_$PokemonUrlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
