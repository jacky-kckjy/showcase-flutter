// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_evolve_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonEvolveDetailData _$PokemonEvolveDetailDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonEvolveDetailData.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolveDetailData {
  @JsonKey(name: "trigger")
  PokemonUrlData get data => throw _privateConstructorUsedError;

  /// Serializes this PokemonEvolveDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonEvolveDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEvolveDetailDataCopyWith<PokemonEvolveDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolveDetailDataCopyWith<$Res> {
  factory $PokemonEvolveDetailDataCopyWith(PokemonEvolveDetailData value,
          $Res Function(PokemonEvolveDetailData) then) =
      _$PokemonEvolveDetailDataCopyWithImpl<$Res, PokemonEvolveDetailData>;
  @useResult
  $Res call({@JsonKey(name: "trigger") PokemonUrlData data});

  $PokemonUrlDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PokemonEvolveDetailDataCopyWithImpl<$Res,
        $Val extends PokemonEvolveDetailData>
    implements $PokemonEvolveDetailDataCopyWith<$Res> {
  _$PokemonEvolveDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEvolveDetailData
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
              as PokemonUrlData,
    ) as $Val);
  }

  /// Create a copy of PokemonEvolveDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonUrlDataCopyWith<$Res> get data {
    return $PokemonUrlDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEvolveDetailDataImplCopyWith<$Res>
    implements $PokemonEvolveDetailDataCopyWith<$Res> {
  factory _$$PokemonEvolveDetailDataImplCopyWith(
          _$PokemonEvolveDetailDataImpl value,
          $Res Function(_$PokemonEvolveDetailDataImpl) then) =
      __$$PokemonEvolveDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "trigger") PokemonUrlData data});

  @override
  $PokemonUrlDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PokemonEvolveDetailDataImplCopyWithImpl<$Res>
    extends _$PokemonEvolveDetailDataCopyWithImpl<$Res,
        _$PokemonEvolveDetailDataImpl>
    implements _$$PokemonEvolveDetailDataImplCopyWith<$Res> {
  __$$PokemonEvolveDetailDataImplCopyWithImpl(
      _$PokemonEvolveDetailDataImpl _value,
      $Res Function(_$PokemonEvolveDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonEvolveDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PokemonEvolveDetailDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PokemonUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolveDetailDataImpl implements _PokemonEvolveDetailData {
  const _$PokemonEvolveDetailDataImpl(
      {@JsonKey(name: "trigger") required this.data});

  factory _$PokemonEvolveDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolveDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "trigger")
  final PokemonUrlData data;

  @override
  String toString() {
    return 'PokemonEvolveDetailData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolveDetailDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of PokemonEvolveDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolveDetailDataImplCopyWith<_$PokemonEvolveDetailDataImpl>
      get copyWith => __$$PokemonEvolveDetailDataImplCopyWithImpl<
          _$PokemonEvolveDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolveDetailDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonEvolveDetailData implements PokemonEvolveDetailData {
  const factory _PokemonEvolveDetailData(
          {@JsonKey(name: "trigger") required final PokemonUrlData data}) =
      _$PokemonEvolveDetailDataImpl;

  factory _PokemonEvolveDetailData.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolveDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "trigger")
  PokemonUrlData get data;

  /// Create a copy of PokemonEvolveDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEvolveDetailDataImplCopyWith<_$PokemonEvolveDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
