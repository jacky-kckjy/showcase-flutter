// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_evolve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonEvolveData _$PokemonEvolveDataFromJson(Map<String, dynamic> json) {
  return _PokemonEvolveData.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolveData {
  @JsonKey(name: "evolution_details")
  List<PokemonEvolveDetailData> get evolveFrom =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "evolves_to")
  List<PokemonEvolveData> get evolveTo => throw _privateConstructorUsedError;
  @JsonKey(name: "species")
  PokemonUrlData get species => throw _privateConstructorUsedError;

  /// Serializes this PokemonEvolveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonEvolveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEvolveDataCopyWith<PokemonEvolveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolveDataCopyWith<$Res> {
  factory $PokemonEvolveDataCopyWith(
          PokemonEvolveData value, $Res Function(PokemonEvolveData) then) =
      _$PokemonEvolveDataCopyWithImpl<$Res, PokemonEvolveData>;
  @useResult
  $Res call(
      {@JsonKey(name: "evolution_details")
      List<PokemonEvolveDetailData> evolveFrom,
      @JsonKey(name: "evolves_to") List<PokemonEvolveData> evolveTo,
      @JsonKey(name: "species") PokemonUrlData species});

  $PokemonUrlDataCopyWith<$Res> get species;
}

/// @nodoc
class _$PokemonEvolveDataCopyWithImpl<$Res, $Val extends PokemonEvolveData>
    implements $PokemonEvolveDataCopyWith<$Res> {
  _$PokemonEvolveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEvolveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolveFrom = null,
    Object? evolveTo = null,
    Object? species = null,
  }) {
    return _then(_value.copyWith(
      evolveFrom: null == evolveFrom
          ? _value.evolveFrom
          : evolveFrom // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolveDetailData>,
      evolveTo: null == evolveTo
          ? _value.evolveTo
          : evolveTo // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolveData>,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonUrlData,
    ) as $Val);
  }

  /// Create a copy of PokemonEvolveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonUrlDataCopyWith<$Res> get species {
    return $PokemonUrlDataCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEvolveDataImplCopyWith<$Res>
    implements $PokemonEvolveDataCopyWith<$Res> {
  factory _$$PokemonEvolveDataImplCopyWith(_$PokemonEvolveDataImpl value,
          $Res Function(_$PokemonEvolveDataImpl) then) =
      __$$PokemonEvolveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "evolution_details")
      List<PokemonEvolveDetailData> evolveFrom,
      @JsonKey(name: "evolves_to") List<PokemonEvolveData> evolveTo,
      @JsonKey(name: "species") PokemonUrlData species});

  @override
  $PokemonUrlDataCopyWith<$Res> get species;
}

/// @nodoc
class __$$PokemonEvolveDataImplCopyWithImpl<$Res>
    extends _$PokemonEvolveDataCopyWithImpl<$Res, _$PokemonEvolveDataImpl>
    implements _$$PokemonEvolveDataImplCopyWith<$Res> {
  __$$PokemonEvolveDataImplCopyWithImpl(_$PokemonEvolveDataImpl _value,
      $Res Function(_$PokemonEvolveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonEvolveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolveFrom = null,
    Object? evolveTo = null,
    Object? species = null,
  }) {
    return _then(_$PokemonEvolveDataImpl(
      evolveFrom: null == evolveFrom
          ? _value._evolveFrom
          : evolveFrom // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolveDetailData>,
      evolveTo: null == evolveTo
          ? _value._evolveTo
          : evolveTo // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolveData>,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolveDataImpl implements _PokemonEvolveData {
  const _$PokemonEvolveDataImpl(
      {@JsonKey(name: "evolution_details")
      required final List<PokemonEvolveDetailData> evolveFrom,
      @JsonKey(name: "evolves_to")
      required final List<PokemonEvolveData> evolveTo,
      @JsonKey(name: "species") required this.species})
      : _evolveFrom = evolveFrom,
        _evolveTo = evolveTo;

  factory _$PokemonEvolveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolveDataImplFromJson(json);

  final List<PokemonEvolveDetailData> _evolveFrom;
  @override
  @JsonKey(name: "evolution_details")
  List<PokemonEvolveDetailData> get evolveFrom {
    if (_evolveFrom is EqualUnmodifiableListView) return _evolveFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolveFrom);
  }

  final List<PokemonEvolveData> _evolveTo;
  @override
  @JsonKey(name: "evolves_to")
  List<PokemonEvolveData> get evolveTo {
    if (_evolveTo is EqualUnmodifiableListView) return _evolveTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolveTo);
  }

  @override
  @JsonKey(name: "species")
  final PokemonUrlData species;

  @override
  String toString() {
    return 'PokemonEvolveData(evolveFrom: $evolveFrom, evolveTo: $evolveTo, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolveDataImpl &&
            const DeepCollectionEquality()
                .equals(other._evolveFrom, _evolveFrom) &&
            const DeepCollectionEquality().equals(other._evolveTo, _evolveTo) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_evolveFrom),
      const DeepCollectionEquality().hash(_evolveTo),
      species);

  /// Create a copy of PokemonEvolveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolveDataImplCopyWith<_$PokemonEvolveDataImpl> get copyWith =>
      __$$PokemonEvolveDataImplCopyWithImpl<_$PokemonEvolveDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolveDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonEvolveData implements PokemonEvolveData {
  const factory _PokemonEvolveData(
          {@JsonKey(name: "evolution_details")
          required final List<PokemonEvolveDetailData> evolveFrom,
          @JsonKey(name: "evolves_to")
          required final List<PokemonEvolveData> evolveTo,
          @JsonKey(name: "species") required final PokemonUrlData species}) =
      _$PokemonEvolveDataImpl;

  factory _PokemonEvolveData.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolveDataImpl.fromJson;

  @override
  @JsonKey(name: "evolution_details")
  List<PokemonEvolveDetailData> get evolveFrom;
  @override
  @JsonKey(name: "evolves_to")
  List<PokemonEvolveData> get evolveTo;
  @override
  @JsonKey(name: "species")
  PokemonUrlData get species;

  /// Create a copy of PokemonEvolveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEvolveDataImplCopyWith<_$PokemonEvolveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
