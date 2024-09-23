// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpeciesData _$PokemonSpeciesDataFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesData.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesData {
  @JsonKey(name: "flavor_text_entries")
  List<PokemonFlavorTextData> get flavorTexts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "genera")
  List<PokemonGeneraData> get genera => throw _privateConstructorUsedError;
  @JsonKey(name: "evolution_chain")
  PokemonUrlData get evolution => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpeciesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpeciesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpeciesDataCopyWith<PokemonSpeciesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesDataCopyWith<$Res> {
  factory $PokemonSpeciesDataCopyWith(
          PokemonSpeciesData value, $Res Function(PokemonSpeciesData) then) =
      _$PokemonSpeciesDataCopyWithImpl<$Res, PokemonSpeciesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "flavor_text_entries")
      List<PokemonFlavorTextData> flavorTexts,
      @JsonKey(name: "genera") List<PokemonGeneraData> genera,
      @JsonKey(name: "evolution_chain") PokemonUrlData evolution});

  $PokemonUrlDataCopyWith<$Res> get evolution;
}

/// @nodoc
class _$PokemonSpeciesDataCopyWithImpl<$Res, $Val extends PokemonSpeciesData>
    implements $PokemonSpeciesDataCopyWith<$Res> {
  _$PokemonSpeciesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpeciesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorTexts = null,
    Object? genera = null,
    Object? evolution = null,
  }) {
    return _then(_value.copyWith(
      flavorTexts: null == flavorTexts
          ? _value.flavorTexts
          : flavorTexts // ignore: cast_nullable_to_non_nullable
              as List<PokemonFlavorTextData>,
      genera: null == genera
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<PokemonGeneraData>,
      evolution: null == evolution
          ? _value.evolution
          : evolution // ignore: cast_nullable_to_non_nullable
              as PokemonUrlData,
    ) as $Val);
  }

  /// Create a copy of PokemonSpeciesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonUrlDataCopyWith<$Res> get evolution {
    return $PokemonUrlDataCopyWith<$Res>(_value.evolution, (value) {
      return _then(_value.copyWith(evolution: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesDataImplCopyWith<$Res>
    implements $PokemonSpeciesDataCopyWith<$Res> {
  factory _$$PokemonSpeciesDataImplCopyWith(_$PokemonSpeciesDataImpl value,
          $Res Function(_$PokemonSpeciesDataImpl) then) =
      __$$PokemonSpeciesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "flavor_text_entries")
      List<PokemonFlavorTextData> flavorTexts,
      @JsonKey(name: "genera") List<PokemonGeneraData> genera,
      @JsonKey(name: "evolution_chain") PokemonUrlData evolution});

  @override
  $PokemonUrlDataCopyWith<$Res> get evolution;
}

/// @nodoc
class __$$PokemonSpeciesDataImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesDataCopyWithImpl<$Res, _$PokemonSpeciesDataImpl>
    implements _$$PokemonSpeciesDataImplCopyWith<$Res> {
  __$$PokemonSpeciesDataImplCopyWithImpl(_$PokemonSpeciesDataImpl _value,
      $Res Function(_$PokemonSpeciesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpeciesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorTexts = null,
    Object? genera = null,
    Object? evolution = null,
  }) {
    return _then(_$PokemonSpeciesDataImpl(
      flavorTexts: null == flavorTexts
          ? _value._flavorTexts
          : flavorTexts // ignore: cast_nullable_to_non_nullable
              as List<PokemonFlavorTextData>,
      genera: null == genera
          ? _value._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<PokemonGeneraData>,
      evolution: null == evolution
          ? _value.evolution
          : evolution // ignore: cast_nullable_to_non_nullable
              as PokemonUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesDataImpl extends _PokemonSpeciesData {
  const _$PokemonSpeciesDataImpl(
      {@JsonKey(name: "flavor_text_entries")
      required final List<PokemonFlavorTextData> flavorTexts,
      @JsonKey(name: "genera") required final List<PokemonGeneraData> genera,
      @JsonKey(name: "evolution_chain") required this.evolution})
      : _flavorTexts = flavorTexts,
        _genera = genera,
        super._();

  factory _$PokemonSpeciesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesDataImplFromJson(json);

  final List<PokemonFlavorTextData> _flavorTexts;
  @override
  @JsonKey(name: "flavor_text_entries")
  List<PokemonFlavorTextData> get flavorTexts {
    if (_flavorTexts is EqualUnmodifiableListView) return _flavorTexts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavorTexts);
  }

  final List<PokemonGeneraData> _genera;
  @override
  @JsonKey(name: "genera")
  List<PokemonGeneraData> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  @override
  @JsonKey(name: "evolution_chain")
  final PokemonUrlData evolution;

  @override
  String toString() {
    return 'PokemonSpeciesData(flavorTexts: $flavorTexts, genera: $genera, evolution: $evolution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesDataImpl &&
            const DeepCollectionEquality()
                .equals(other._flavorTexts, _flavorTexts) &&
            const DeepCollectionEquality().equals(other._genera, _genera) &&
            (identical(other.evolution, evolution) ||
                other.evolution == evolution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flavorTexts),
      const DeepCollectionEquality().hash(_genera),
      evolution);

  /// Create a copy of PokemonSpeciesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesDataImplCopyWith<_$PokemonSpeciesDataImpl> get copyWith =>
      __$$PokemonSpeciesDataImplCopyWithImpl<_$PokemonSpeciesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesData extends PokemonSpeciesData {
  const factory _PokemonSpeciesData(
      {@JsonKey(name: "flavor_text_entries")
      required final List<PokemonFlavorTextData> flavorTexts,
      @JsonKey(name: "genera") required final List<PokemonGeneraData> genera,
      @JsonKey(name: "evolution_chain")
      required final PokemonUrlData evolution}) = _$PokemonSpeciesDataImpl;
  const _PokemonSpeciesData._() : super._();

  factory _PokemonSpeciesData.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesDataImpl.fromJson;

  @override
  @JsonKey(name: "flavor_text_entries")
  List<PokemonFlavorTextData> get flavorTexts;
  @override
  @JsonKey(name: "genera")
  List<PokemonGeneraData> get genera;
  @override
  @JsonKey(name: "evolution_chain")
  PokemonUrlData get evolution;

  /// Create a copy of PokemonSpeciesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpeciesDataImplCopyWith<_$PokemonSpeciesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
