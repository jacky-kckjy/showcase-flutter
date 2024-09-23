// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get gallery => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;
  List<PokemonStat> get stats => throw _privateConstructorUsedError;
  PokemonDimen get dimen => throw _privateConstructorUsedError;
  PokemonSpecies get species => throw _privateConstructorUsedError;
  List<Pokemon> get nextEvolutions => throw _privateConstructorUsedError;
  Pokemon? get previousEvolutions => throw _privateConstructorUsedError;

  /// Serializes this Pokemon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int id,
      int order,
      String name,
      String image,
      List<String> gallery,
      List<PokemonType> types,
      List<PokemonStat> stats,
      PokemonDimen dimen,
      PokemonSpecies species,
      List<Pokemon> nextEvolutions,
      Pokemon? previousEvolutions});

  $PokemonDimenCopyWith<$Res> get dimen;
  $PokemonSpeciesCopyWith<$Res> get species;
  $PokemonCopyWith<$Res>? get previousEvolutions;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? image = null,
    Object? gallery = null,
    Object? types = null,
    Object? stats = null,
    Object? dimen = null,
    Object? species = null,
    Object? nextEvolutions = null,
    Object? previousEvolutions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
      dimen: null == dimen
          ? _value.dimen
          : dimen // ignore: cast_nullable_to_non_nullable
              as PokemonDimen,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
      nextEvolutions: null == nextEvolutions
          ? _value.nextEvolutions
          : nextEvolutions // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      previousEvolutions: freezed == previousEvolutions
          ? _value.previousEvolutions
          : previousEvolutions // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
    ) as $Val);
  }

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonDimenCopyWith<$Res> get dimen {
    return $PokemonDimenCopyWith<$Res>(_value.dimen, (value) {
      return _then(_value.copyWith(dimen: value) as $Val);
    });
  }

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesCopyWith<$Res> get species {
    return $PokemonSpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get previousEvolutions {
    if (_value.previousEvolutions == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.previousEvolutions!, (value) {
      return _then(_value.copyWith(previousEvolutions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int order,
      String name,
      String image,
      List<String> gallery,
      List<PokemonType> types,
      List<PokemonStat> stats,
      PokemonDimen dimen,
      PokemonSpecies species,
      List<Pokemon> nextEvolutions,
      Pokemon? previousEvolutions});

  @override
  $PokemonDimenCopyWith<$Res> get dimen;
  @override
  $PokemonSpeciesCopyWith<$Res> get species;
  @override
  $PokemonCopyWith<$Res>? get previousEvolutions;
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? image = null,
    Object? gallery = null,
    Object? types = null,
    Object? stats = null,
    Object? dimen = null,
    Object? species = null,
    Object? nextEvolutions = null,
    Object? previousEvolutions = freezed,
  }) {
    return _then(_$PokemonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
      dimen: null == dimen
          ? _value.dimen
          : dimen // ignore: cast_nullable_to_non_nullable
              as PokemonDimen,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
      nextEvolutions: null == nextEvolutions
          ? _value._nextEvolutions
          : nextEvolutions // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      previousEvolutions: freezed == previousEvolutions
          ? _value.previousEvolutions
          : previousEvolutions // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl implements _Pokemon {
  const _$PokemonImpl(
      {required this.id,
      required this.order,
      required this.name,
      required this.image,
      required final List<String> gallery,
      required final List<PokemonType> types,
      required final List<PokemonStat> stats,
      required this.dimen,
      required this.species,
      required final List<Pokemon> nextEvolutions,
      required this.previousEvolutions})
      : _gallery = gallery,
        _types = types,
        _stats = stats,
        _nextEvolutions = nextEvolutions;

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  final int id;
  @override
  final int order;
  @override
  final String name;
  @override
  final String image;
  final List<String> _gallery;
  @override
  List<String> get gallery {
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gallery);
  }

  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStat> _stats;
  @override
  List<PokemonStat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  final PokemonDimen dimen;
  @override
  final PokemonSpecies species;
  final List<Pokemon> _nextEvolutions;
  @override
  List<Pokemon> get nextEvolutions {
    if (_nextEvolutions is EqualUnmodifiableListView) return _nextEvolutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nextEvolutions);
  }

  @override
  final Pokemon? previousEvolutions;

  @override
  String toString() {
    return 'Pokemon(id: $id, order: $order, name: $name, image: $image, gallery: $gallery, types: $types, stats: $stats, dimen: $dimen, species: $species, nextEvolutions: $nextEvolutions, previousEvolutions: $previousEvolutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.dimen, dimen) || other.dimen == dimen) &&
            (identical(other.species, species) || other.species == species) &&
            const DeepCollectionEquality()
                .equals(other._nextEvolutions, _nextEvolutions) &&
            (identical(other.previousEvolutions, previousEvolutions) ||
                other.previousEvolutions == previousEvolutions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      order,
      name,
      image,
      const DeepCollectionEquality().hash(_gallery),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats),
      dimen,
      species,
      const DeepCollectionEquality().hash(_nextEvolutions),
      previousEvolutions);

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final int order,
      required final String name,
      required final String image,
      required final List<String> gallery,
      required final List<PokemonType> types,
      required final List<PokemonStat> stats,
      required final PokemonDimen dimen,
      required final PokemonSpecies species,
      required final List<Pokemon> nextEvolutions,
      required final Pokemon? previousEvolutions}) = _$PokemonImpl;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  int get id;
  @override
  int get order;
  @override
  String get name;
  @override
  String get image;
  @override
  List<String> get gallery;
  @override
  List<PokemonType> get types;
  @override
  List<PokemonStat> get stats;
  @override
  PokemonDimen get dimen;
  @override
  PokemonSpecies get species;
  @override
  List<Pokemon> get nextEvolutions;
  @override
  Pokemon? get previousEvolutions;

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
