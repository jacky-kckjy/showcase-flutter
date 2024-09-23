// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeData _$PokemonTypeDataFromJson(Map<String, dynamic> json) {
  return _PokemonTypeData.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeData {
  @JsonKey(name: "type")
  PokemonTypeDetailData get data => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeDataCopyWith<PokemonTypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDataCopyWith<$Res> {
  factory $PokemonTypeDataCopyWith(
          PokemonTypeData value, $Res Function(PokemonTypeData) then) =
      _$PokemonTypeDataCopyWithImpl<$Res, PokemonTypeData>;
  @useResult
  $Res call({@JsonKey(name: "type") PokemonTypeDetailData data});

  $PokemonTypeDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PokemonTypeDataCopyWithImpl<$Res, $Val extends PokemonTypeData>
    implements $PokemonTypeDataCopyWith<$Res> {
  _$PokemonTypeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PokemonTypeDetailData,
    ) as $Val);
  }

  /// Create a copy of PokemonTypeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeDetailDataCopyWith<$Res> get data {
    return $PokemonTypeDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeDataImplCopyWith<$Res>
    implements $PokemonTypeDataCopyWith<$Res> {
  factory _$$PokemonTypeDataImplCopyWith(_$PokemonTypeDataImpl value,
          $Res Function(_$PokemonTypeDataImpl) then) =
      __$$PokemonTypeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "type") PokemonTypeDetailData data});

  @override
  $PokemonTypeDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PokemonTypeDataImplCopyWithImpl<$Res>
    extends _$PokemonTypeDataCopyWithImpl<$Res, _$PokemonTypeDataImpl>
    implements _$$PokemonTypeDataImplCopyWith<$Res> {
  __$$PokemonTypeDataImplCopyWithImpl(
      _$PokemonTypeDataImpl _value, $Res Function(_$PokemonTypeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PokemonTypeDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PokemonTypeDetailData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeDataImpl implements _PokemonTypeData {
  const _$PokemonTypeDataImpl({@JsonKey(name: "type") required this.data});

  factory _$PokemonTypeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDataImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final PokemonTypeDetailData data;

  @override
  String toString() {
    return 'PokemonTypeData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of PokemonTypeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDataImplCopyWith<_$PokemonTypeDataImpl> get copyWith =>
      __$$PokemonTypeDataImplCopyWithImpl<_$PokemonTypeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeData implements PokemonTypeData {
  const factory _PokemonTypeData(
          {@JsonKey(name: "type") required final PokemonTypeDetailData data}) =
      _$PokemonTypeDataImpl;

  factory _PokemonTypeData.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDataImpl.fromJson;

  @override
  @JsonKey(name: "type")
  PokemonTypeDetailData get data;

  /// Create a copy of PokemonTypeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeDataImplCopyWith<_$PokemonTypeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
