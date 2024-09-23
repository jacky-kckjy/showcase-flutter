// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_evolve_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonEvolveGroupData _$PokemonEvolveGroupDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonEvolveGroupData.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolveGroupData {
  @JsonKey(name: "chain")
  PokemonEvolveData get chain => throw _privateConstructorUsedError;

  /// Serializes this PokemonEvolveGroupData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonEvolveGroupData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEvolveGroupDataCopyWith<PokemonEvolveGroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolveGroupDataCopyWith<$Res> {
  factory $PokemonEvolveGroupDataCopyWith(PokemonEvolveGroupData value,
          $Res Function(PokemonEvolveGroupData) then) =
      _$PokemonEvolveGroupDataCopyWithImpl<$Res, PokemonEvolveGroupData>;
  @useResult
  $Res call({@JsonKey(name: "chain") PokemonEvolveData chain});

  $PokemonEvolveDataCopyWith<$Res> get chain;
}

/// @nodoc
class _$PokemonEvolveGroupDataCopyWithImpl<$Res,
        $Val extends PokemonEvolveGroupData>
    implements $PokemonEvolveGroupDataCopyWith<$Res> {
  _$PokemonEvolveGroupDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEvolveGroupData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_value.copyWith(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as PokemonEvolveData,
    ) as $Val);
  }

  /// Create a copy of PokemonEvolveGroupData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonEvolveDataCopyWith<$Res> get chain {
    return $PokemonEvolveDataCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEvolveGroupDataImplCopyWith<$Res>
    implements $PokemonEvolveGroupDataCopyWith<$Res> {
  factory _$$PokemonEvolveGroupDataImplCopyWith(
          _$PokemonEvolveGroupDataImpl value,
          $Res Function(_$PokemonEvolveGroupDataImpl) then) =
      __$$PokemonEvolveGroupDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "chain") PokemonEvolveData chain});

  @override
  $PokemonEvolveDataCopyWith<$Res> get chain;
}

/// @nodoc
class __$$PokemonEvolveGroupDataImplCopyWithImpl<$Res>
    extends _$PokemonEvolveGroupDataCopyWithImpl<$Res,
        _$PokemonEvolveGroupDataImpl>
    implements _$$PokemonEvolveGroupDataImplCopyWith<$Res> {
  __$$PokemonEvolveGroupDataImplCopyWithImpl(
      _$PokemonEvolveGroupDataImpl _value,
      $Res Function(_$PokemonEvolveGroupDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonEvolveGroupData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_$PokemonEvolveGroupDataImpl(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as PokemonEvolveData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolveGroupDataImpl implements _PokemonEvolveGroupData {
  const _$PokemonEvolveGroupDataImpl(
      {@JsonKey(name: "chain") required this.chain});

  factory _$PokemonEvolveGroupDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolveGroupDataImplFromJson(json);

  @override
  @JsonKey(name: "chain")
  final PokemonEvolveData chain;

  @override
  String toString() {
    return 'PokemonEvolveGroupData(chain: $chain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolveGroupDataImpl &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chain);

  /// Create a copy of PokemonEvolveGroupData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolveGroupDataImplCopyWith<_$PokemonEvolveGroupDataImpl>
      get copyWith => __$$PokemonEvolveGroupDataImplCopyWithImpl<
          _$PokemonEvolveGroupDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolveGroupDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonEvolveGroupData implements PokemonEvolveGroupData {
  const factory _PokemonEvolveGroupData(
          {@JsonKey(name: "chain") required final PokemonEvolveData chain}) =
      _$PokemonEvolveGroupDataImpl;

  factory _PokemonEvolveGroupData.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolveGroupDataImpl.fromJson;

  @override
  @JsonKey(name: "chain")
  PokemonEvolveData get chain;

  /// Create a copy of PokemonEvolveGroupData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEvolveGroupDataImplCopyWith<_$PokemonEvolveGroupDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
