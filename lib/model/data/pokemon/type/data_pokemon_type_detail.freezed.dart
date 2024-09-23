// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_type_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeDetailData _$PokemonTypeDetailDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonTypeDetailData.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeDetailData {
  @JsonKey(name: "name")
  PokemonType get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeDetailDataCopyWith<PokemonTypeDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDetailDataCopyWith<$Res> {
  factory $PokemonTypeDetailDataCopyWith(PokemonTypeDetailData value,
          $Res Function(PokemonTypeDetailData) then) =
      _$PokemonTypeDetailDataCopyWithImpl<$Res, PokemonTypeDetailData>;
  @useResult
  $Res call({@JsonKey(name: "name") PokemonType type});
}

/// @nodoc
class _$PokemonTypeDetailDataCopyWithImpl<$Res,
        $Val extends PokemonTypeDetailData>
    implements $PokemonTypeDetailDataCopyWith<$Res> {
  _$PokemonTypeDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypeDetailDataImplCopyWith<$Res>
    implements $PokemonTypeDetailDataCopyWith<$Res> {
  factory _$$PokemonTypeDetailDataImplCopyWith(
          _$PokemonTypeDetailDataImpl value,
          $Res Function(_$PokemonTypeDetailDataImpl) then) =
      __$$PokemonTypeDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") PokemonType type});
}

/// @nodoc
class __$$PokemonTypeDetailDataImplCopyWithImpl<$Res>
    extends _$PokemonTypeDetailDataCopyWithImpl<$Res,
        _$PokemonTypeDetailDataImpl>
    implements _$$PokemonTypeDetailDataImplCopyWith<$Res> {
  __$$PokemonTypeDetailDataImplCopyWithImpl(_$PokemonTypeDetailDataImpl _value,
      $Res Function(_$PokemonTypeDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$PokemonTypeDetailDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeDetailDataImpl implements _PokemonTypeDetailData {
  const _$PokemonTypeDetailDataImpl(
      {@JsonKey(name: "name") required this.type});

  factory _$PokemonTypeDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final PokemonType type;

  @override
  String toString() {
    return 'PokemonTypeDetailData(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDetailDataImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of PokemonTypeDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDetailDataImplCopyWith<_$PokemonTypeDetailDataImpl>
      get copyWith => __$$PokemonTypeDetailDataImplCopyWithImpl<
          _$PokemonTypeDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDetailDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeDetailData implements PokemonTypeDetailData {
  const factory _PokemonTypeDetailData(
          {@JsonKey(name: "name") required final PokemonType type}) =
      _$PokemonTypeDetailDataImpl;

  factory _PokemonTypeDetailData.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "name")
  PokemonType get type;

  /// Create a copy of PokemonTypeDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeDetailDataImplCopyWith<_$PokemonTypeDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
