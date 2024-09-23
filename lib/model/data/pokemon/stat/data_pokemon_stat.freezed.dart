// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStatData _$PokemonStatDataFromJson(Map<String, dynamic> json) {
  return _PokemonStatData.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatData {
  @JsonKey(name: "base_stat")
  int get value => throw _privateConstructorUsedError;
  @JsonKey(name: "stat")
  PokemonStatDetailData get data => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatDataCopyWith<PokemonStatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatDataCopyWith<$Res> {
  factory $PokemonStatDataCopyWith(
          PokemonStatData value, $Res Function(PokemonStatData) then) =
      _$PokemonStatDataCopyWithImpl<$Res, PokemonStatData>;
  @useResult
  $Res call(
      {@JsonKey(name: "base_stat") int value,
      @JsonKey(name: "stat") PokemonStatDetailData data});

  $PokemonStatDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PokemonStatDataCopyWithImpl<$Res, $Val extends PokemonStatData>
    implements $PokemonStatDataCopyWith<$Res> {
  _$PokemonStatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PokemonStatDetailData,
    ) as $Val);
  }

  /// Create a copy of PokemonStatData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonStatDetailDataCopyWith<$Res> get data {
    return $PokemonStatDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatDataImplCopyWith<$Res>
    implements $PokemonStatDataCopyWith<$Res> {
  factory _$$PokemonStatDataImplCopyWith(_$PokemonStatDataImpl value,
          $Res Function(_$PokemonStatDataImpl) then) =
      __$$PokemonStatDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "base_stat") int value,
      @JsonKey(name: "stat") PokemonStatDetailData data});

  @override
  $PokemonStatDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PokemonStatDataImplCopyWithImpl<$Res>
    extends _$PokemonStatDataCopyWithImpl<$Res, _$PokemonStatDataImpl>
    implements _$$PokemonStatDataImplCopyWith<$Res> {
  __$$PokemonStatDataImplCopyWithImpl(
      _$PokemonStatDataImpl _value, $Res Function(_$PokemonStatDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? data = null,
  }) {
    return _then(_$PokemonStatDataImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PokemonStatDetailData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatDataImpl implements _PokemonStatData {
  const _$PokemonStatDataImpl(
      {@JsonKey(name: "base_stat") required this.value,
      @JsonKey(name: "stat") required this.data});

  factory _$PokemonStatDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatDataImplFromJson(json);

  @override
  @JsonKey(name: "base_stat")
  final int value;
  @override
  @JsonKey(name: "stat")
  final PokemonStatDetailData data;

  @override
  String toString() {
    return 'PokemonStatData(value: $value, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatDataImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, data);

  /// Create a copy of PokemonStatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatDataImplCopyWith<_$PokemonStatDataImpl> get copyWith =>
      __$$PokemonStatDataImplCopyWithImpl<_$PokemonStatDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatData implements PokemonStatData {
  const factory _PokemonStatData(
          {@JsonKey(name: "base_stat") required final int value,
          @JsonKey(name: "stat") required final PokemonStatDetailData data}) =
      _$PokemonStatDataImpl;

  factory _PokemonStatData.fromJson(Map<String, dynamic> json) =
      _$PokemonStatDataImpl.fromJson;

  @override
  @JsonKey(name: "base_stat")
  int get value;
  @override
  @JsonKey(name: "stat")
  PokemonStatDetailData get data;

  /// Create a copy of PokemonStatData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatDataImplCopyWith<_$PokemonStatDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
