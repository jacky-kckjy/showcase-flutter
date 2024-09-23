// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_stat_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStatDetailData _$PokemonStatDetailDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonStatDetailData.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatDetailData {
  @JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
  PokemonStatType get stat => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatDetailDataCopyWith<PokemonStatDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatDetailDataCopyWith<$Res> {
  factory $PokemonStatDetailDataCopyWith(PokemonStatDetailData value,
          $Res Function(PokemonStatDetailData) then) =
      _$PokemonStatDetailDataCopyWithImpl<$Res, PokemonStatDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
      PokemonStatType stat});
}

/// @nodoc
class _$PokemonStatDetailDataCopyWithImpl<$Res,
        $Val extends PokemonStatDetailData>
    implements $PokemonStatDetailDataCopyWith<$Res> {
  _$PokemonStatDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonStatType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonStatDetailDataImplCopyWith<$Res>
    implements $PokemonStatDetailDataCopyWith<$Res> {
  factory _$$PokemonStatDetailDataImplCopyWith(
          _$PokemonStatDetailDataImpl value,
          $Res Function(_$PokemonStatDetailDataImpl) then) =
      __$$PokemonStatDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
      PokemonStatType stat});
}

/// @nodoc
class __$$PokemonStatDetailDataImplCopyWithImpl<$Res>
    extends _$PokemonStatDetailDataCopyWithImpl<$Res,
        _$PokemonStatDetailDataImpl>
    implements _$$PokemonStatDetailDataImplCopyWith<$Res> {
  __$$PokemonStatDetailDataImplCopyWithImpl(_$PokemonStatDetailDataImpl _value,
      $Res Function(_$PokemonStatDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat = null,
  }) {
    return _then(_$PokemonStatDetailDataImpl(
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonStatType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatDetailDataImpl implements _PokemonStatDetailData {
  const _$PokemonStatDetailDataImpl(
      {@JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
      required this.stat});

  factory _$PokemonStatDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
  final PokemonStatType stat;

  @override
  String toString() {
    return 'PokemonStatDetailData(stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatDetailDataImpl &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stat);

  /// Create a copy of PokemonStatDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatDetailDataImplCopyWith<_$PokemonStatDetailDataImpl>
      get copyWith => __$$PokemonStatDetailDataImplCopyWithImpl<
          _$PokemonStatDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatDetailDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatDetailData implements PokemonStatDetailData {
  const factory _PokemonStatDetailData(
      {@JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
      required final PokemonStatType stat}) = _$PokemonStatDetailDataImpl;

  factory _PokemonStatDetailData.fromJson(Map<String, dynamic> json) =
      _$PokemonStatDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
  PokemonStatType get stat;

  /// Create a copy of PokemonStatDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatDetailDataImplCopyWith<_$PokemonStatDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
