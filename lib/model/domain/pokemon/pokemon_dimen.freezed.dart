// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_dimen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDimen _$PokemonDimenFromJson(Map<String, dynamic> json) {
  return _PokemonDimen.fromJson(json);
}

/// @nodoc
mixin _$PokemonDimen {
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  /// Serializes this PokemonDimen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDimen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDimenCopyWith<PokemonDimen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDimenCopyWith<$Res> {
  factory $PokemonDimenCopyWith(
          PokemonDimen value, $Res Function(PokemonDimen) then) =
      _$PokemonDimenCopyWithImpl<$Res, PokemonDimen>;
  @useResult
  $Res call({double height, double weight});
}

/// @nodoc
class _$PokemonDimenCopyWithImpl<$Res, $Val extends PokemonDimen>
    implements $PokemonDimenCopyWith<$Res> {
  _$PokemonDimenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDimen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDimenImplCopyWith<$Res>
    implements $PokemonDimenCopyWith<$Res> {
  factory _$$PokemonDimenImplCopyWith(
          _$PokemonDimenImpl value, $Res Function(_$PokemonDimenImpl) then) =
      __$$PokemonDimenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double height, double weight});
}

/// @nodoc
class __$$PokemonDimenImplCopyWithImpl<$Res>
    extends _$PokemonDimenCopyWithImpl<$Res, _$PokemonDimenImpl>
    implements _$$PokemonDimenImplCopyWith<$Res> {
  __$$PokemonDimenImplCopyWithImpl(
      _$PokemonDimenImpl _value, $Res Function(_$PokemonDimenImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonDimen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$PokemonDimenImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDimenImpl implements _PokemonDimen {
  const _$PokemonDimenImpl({required this.height, required this.weight});

  factory _$PokemonDimenImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDimenImplFromJson(json);

  @override
  final double height;
  @override
  final double weight;

  @override
  String toString() {
    return 'PokemonDimen(height: $height, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDimenImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, height, weight);

  /// Create a copy of PokemonDimen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDimenImplCopyWith<_$PokemonDimenImpl> get copyWith =>
      __$$PokemonDimenImplCopyWithImpl<_$PokemonDimenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDimenImplToJson(
      this,
    );
  }
}

abstract class _PokemonDimen implements PokemonDimen {
  const factory _PokemonDimen(
      {required final double height,
      required final double weight}) = _$PokemonDimenImpl;

  factory _PokemonDimen.fromJson(Map<String, dynamic> json) =
      _$PokemonDimenImpl.fromJson;

  @override
  double get height;
  @override
  double get weight;

  /// Create a copy of PokemonDimen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDimenImplCopyWith<_$PokemonDimenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
