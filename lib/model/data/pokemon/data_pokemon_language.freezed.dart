// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonLangData _$PokemonLangDataFromJson(Map<String, dynamic> json) {
  return _PokemonLangData.fromJson(json);
}

/// @nodoc
mixin _$PokemonLangData {
  @JsonKey(name: "name")
  String get lang => throw _privateConstructorUsedError;

  /// Serializes this PokemonLangData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonLangData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonLangDataCopyWith<PokemonLangData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonLangDataCopyWith<$Res> {
  factory $PokemonLangDataCopyWith(
          PokemonLangData value, $Res Function(PokemonLangData) then) =
      _$PokemonLangDataCopyWithImpl<$Res, PokemonLangData>;
  @useResult
  $Res call({@JsonKey(name: "name") String lang});
}

/// @nodoc
class _$PokemonLangDataCopyWithImpl<$Res, $Val extends PokemonLangData>
    implements $PokemonLangDataCopyWith<$Res> {
  _$PokemonLangDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonLangData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonLangDataImplCopyWith<$Res>
    implements $PokemonLangDataCopyWith<$Res> {
  factory _$$PokemonLangDataImplCopyWith(_$PokemonLangDataImpl value,
          $Res Function(_$PokemonLangDataImpl) then) =
      __$$PokemonLangDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String lang});
}

/// @nodoc
class __$$PokemonLangDataImplCopyWithImpl<$Res>
    extends _$PokemonLangDataCopyWithImpl<$Res, _$PokemonLangDataImpl>
    implements _$$PokemonLangDataImplCopyWith<$Res> {
  __$$PokemonLangDataImplCopyWithImpl(
      _$PokemonLangDataImpl _value, $Res Function(_$PokemonLangDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonLangData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
  }) {
    return _then(_$PokemonLangDataImpl(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonLangDataImpl implements _PokemonLangData {
  const _$PokemonLangDataImpl({@JsonKey(name: "name") required this.lang});

  factory _$PokemonLangDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonLangDataImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String lang;

  @override
  String toString() {
    return 'PokemonLangData(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonLangDataImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lang);

  /// Create a copy of PokemonLangData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonLangDataImplCopyWith<_$PokemonLangDataImpl> get copyWith =>
      __$$PokemonLangDataImplCopyWithImpl<_$PokemonLangDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonLangDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonLangData implements PokemonLangData {
  const factory _PokemonLangData(
          {@JsonKey(name: "name") required final String lang}) =
      _$PokemonLangDataImpl;

  factory _PokemonLangData.fromJson(Map<String, dynamic> json) =
      _$PokemonLangDataImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get lang;

  /// Create a copy of PokemonLangData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonLangDataImplCopyWith<_$PokemonLangDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
