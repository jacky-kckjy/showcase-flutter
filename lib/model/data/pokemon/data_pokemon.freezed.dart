// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

/// @nodoc
mixin _$PokemonData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order")
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "sprites")
  PokemonSpritesData get images => throw _privateConstructorUsedError;
  @JsonKey(name: "types")
  List<PokemonTypeData> get types => throw _privateConstructorUsedError;
  @JsonKey(name: "stats")
  List<PokemonStatData> get stats => throw _privateConstructorUsedError;
  @JsonKey(name: "weight")
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  double get height => throw _privateConstructorUsedError;

  /// Serializes this PokemonData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDataCopyWith<PokemonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(
          PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res, PokemonData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "order") int order,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "sprites") PokemonSpritesData images,
      @JsonKey(name: "types") List<PokemonTypeData> types,
      @JsonKey(name: "stats") List<PokemonStatData> stats,
      @JsonKey(name: "weight") double weight,
      @JsonKey(name: "height") double height});

  $PokemonSpritesDataCopyWith<$Res> get images;
}

/// @nodoc
class _$PokemonDataCopyWithImpl<$Res, $Val extends PokemonData>
    implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? images = null,
    Object? types = null,
    Object? stats = null,
    Object? weight = null,
    Object? height = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesData,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeData>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatData>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of PokemonData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesDataCopyWith<$Res> get images {
    return $PokemonSpritesDataCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDataImplCopyWith<$Res>
    implements $PokemonDataCopyWith<$Res> {
  factory _$$PokemonDataImplCopyWith(
          _$PokemonDataImpl value, $Res Function(_$PokemonDataImpl) then) =
      __$$PokemonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "order") int order,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "sprites") PokemonSpritesData images,
      @JsonKey(name: "types") List<PokemonTypeData> types,
      @JsonKey(name: "stats") List<PokemonStatData> stats,
      @JsonKey(name: "weight") double weight,
      @JsonKey(name: "height") double height});

  @override
  $PokemonSpritesDataCopyWith<$Res> get images;
}

/// @nodoc
class __$$PokemonDataImplCopyWithImpl<$Res>
    extends _$PokemonDataCopyWithImpl<$Res, _$PokemonDataImpl>
    implements _$$PokemonDataImplCopyWith<$Res> {
  __$$PokemonDataImplCopyWithImpl(
      _$PokemonDataImpl _value, $Res Function(_$PokemonDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? images = null,
    Object? types = null,
    Object? stats = null,
    Object? weight = null,
    Object? height = null,
  }) {
    return _then(_$PokemonDataImpl(
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesData,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeData>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatData>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDataImpl implements _PokemonData {
  const _$PokemonDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "order") required this.order,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "sprites") required this.images,
      @JsonKey(name: "types") required final List<PokemonTypeData> types,
      @JsonKey(name: "stats") required final List<PokemonStatData> stats,
      @JsonKey(name: "weight") required this.weight,
      @JsonKey(name: "height") required this.height})
      : _types = types,
        _stats = stats;

  factory _$PokemonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "order")
  final int order;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "sprites")
  final PokemonSpritesData images;
  final List<PokemonTypeData> _types;
  @override
  @JsonKey(name: "types")
  List<PokemonTypeData> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStatData> _stats;
  @override
  @JsonKey(name: "stats")
  List<PokemonStatData> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  @JsonKey(name: "weight")
  final double weight;
  @override
  @JsonKey(name: "height")
  final double height;

  @override
  String toString() {
    return 'PokemonData(id: $id, order: $order, name: $name, images: $images, types: $types, stats: $stats, weight: $weight, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      order,
      name,
      images,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats),
      weight,
      height);

  /// Create a copy of PokemonData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      __$$PokemonDataImplCopyWithImpl<_$PokemonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonData implements PokemonData {
  const factory _PokemonData(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "order") required final int order,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "sprites") required final PokemonSpritesData images,
          @JsonKey(name: "types") required final List<PokemonTypeData> types,
          @JsonKey(name: "stats") required final List<PokemonStatData> stats,
          @JsonKey(name: "weight") required final double weight,
          @JsonKey(name: "height") required final double height}) =
      _$PokemonDataImpl;

  factory _PokemonData.fromJson(Map<String, dynamic> json) =
      _$PokemonDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "order")
  int get order;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "sprites")
  PokemonSpritesData get images;
  @override
  @JsonKey(name: "types")
  List<PokemonTypeData> get types;
  @override
  @JsonKey(name: "stats")
  List<PokemonStatData> get stats;
  @override
  @JsonKey(name: "weight")
  double get weight;
  @override
  @JsonKey(name: "height")
  double get height;

  /// Create a copy of PokemonData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
