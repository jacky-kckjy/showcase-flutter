// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_genus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonGeneraData _$PokemonGeneraDataFromJson(Map<String, dynamic> json) {
  return _PokemonGeneraData.fromJson(json);
}

/// @nodoc
mixin _$PokemonGeneraData {
  @JsonKey(name: "genus")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  PokemonLangData get lang => throw _privateConstructorUsedError;

  /// Serializes this PokemonGeneraData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonGeneraData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonGeneraDataCopyWith<PokemonGeneraData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonGeneraDataCopyWith<$Res> {
  factory $PokemonGeneraDataCopyWith(
          PokemonGeneraData value, $Res Function(PokemonGeneraData) then) =
      _$PokemonGeneraDataCopyWithImpl<$Res, PokemonGeneraData>;
  @useResult
  $Res call(
      {@JsonKey(name: "genus") String name,
      @JsonKey(name: "language") PokemonLangData lang});

  $PokemonLangDataCopyWith<$Res> get lang;
}

/// @nodoc
class _$PokemonGeneraDataCopyWithImpl<$Res, $Val extends PokemonGeneraData>
    implements $PokemonGeneraDataCopyWith<$Res> {
  _$PokemonGeneraDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonGeneraData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as PokemonLangData,
    ) as $Val);
  }

  /// Create a copy of PokemonGeneraData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonLangDataCopyWith<$Res> get lang {
    return $PokemonLangDataCopyWith<$Res>(_value.lang, (value) {
      return _then(_value.copyWith(lang: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonGeneraDataImplCopyWith<$Res>
    implements $PokemonGeneraDataCopyWith<$Res> {
  factory _$$PokemonGeneraDataImplCopyWith(_$PokemonGeneraDataImpl value,
          $Res Function(_$PokemonGeneraDataImpl) then) =
      __$$PokemonGeneraDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "genus") String name,
      @JsonKey(name: "language") PokemonLangData lang});

  @override
  $PokemonLangDataCopyWith<$Res> get lang;
}

/// @nodoc
class __$$PokemonGeneraDataImplCopyWithImpl<$Res>
    extends _$PokemonGeneraDataCopyWithImpl<$Res, _$PokemonGeneraDataImpl>
    implements _$$PokemonGeneraDataImplCopyWith<$Res> {
  __$$PokemonGeneraDataImplCopyWithImpl(_$PokemonGeneraDataImpl _value,
      $Res Function(_$PokemonGeneraDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonGeneraData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lang = null,
  }) {
    return _then(_$PokemonGeneraDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as PokemonLangData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonGeneraDataImpl implements _PokemonGeneraData {
  const _$PokemonGeneraDataImpl(
      {@JsonKey(name: "genus") required this.name,
      @JsonKey(name: "language") required this.lang});

  factory _$PokemonGeneraDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonGeneraDataImplFromJson(json);

  @override
  @JsonKey(name: "genus")
  final String name;
  @override
  @JsonKey(name: "language")
  final PokemonLangData lang;

  @override
  String toString() {
    return 'PokemonGeneraData(name: $name, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonGeneraDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lang);

  /// Create a copy of PokemonGeneraData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonGeneraDataImplCopyWith<_$PokemonGeneraDataImpl> get copyWith =>
      __$$PokemonGeneraDataImplCopyWithImpl<_$PokemonGeneraDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonGeneraDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonGeneraData implements PokemonGeneraData {
  const factory _PokemonGeneraData(
          {@JsonKey(name: "genus") required final String name,
          @JsonKey(name: "language") required final PokemonLangData lang}) =
      _$PokemonGeneraDataImpl;

  factory _PokemonGeneraData.fromJson(Map<String, dynamic> json) =
      _$PokemonGeneraDataImpl.fromJson;

  @override
  @JsonKey(name: "genus")
  String get name;
  @override
  @JsonKey(name: "language")
  PokemonLangData get lang;

  /// Create a copy of PokemonGeneraData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonGeneraDataImplCopyWith<_$PokemonGeneraDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
