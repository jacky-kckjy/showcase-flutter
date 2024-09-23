// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_flavor_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonFlavorTextData _$PokemonFlavorTextDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonFlavorTextData.fromJson(json);
}

/// @nodoc
mixin _$PokemonFlavorTextData {
  @JsonKey(name: "flavor_text")
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  PokemonLangData get lang => throw _privateConstructorUsedError;

  /// Serializes this PokemonFlavorTextData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonFlavorTextData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonFlavorTextDataCopyWith<PokemonFlavorTextData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFlavorTextDataCopyWith<$Res> {
  factory $PokemonFlavorTextDataCopyWith(PokemonFlavorTextData value,
          $Res Function(PokemonFlavorTextData) then) =
      _$PokemonFlavorTextDataCopyWithImpl<$Res, PokemonFlavorTextData>;
  @useResult
  $Res call(
      {@JsonKey(name: "flavor_text") String text,
      @JsonKey(name: "language") PokemonLangData lang});

  $PokemonLangDataCopyWith<$Res> get lang;
}

/// @nodoc
class _$PokemonFlavorTextDataCopyWithImpl<$Res,
        $Val extends PokemonFlavorTextData>
    implements $PokemonFlavorTextDataCopyWith<$Res> {
  _$PokemonFlavorTextDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonFlavorTextData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as PokemonLangData,
    ) as $Val);
  }

  /// Create a copy of PokemonFlavorTextData
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
abstract class _$$PokemonFlavorTextDataImplCopyWith<$Res>
    implements $PokemonFlavorTextDataCopyWith<$Res> {
  factory _$$PokemonFlavorTextDataImplCopyWith(
          _$PokemonFlavorTextDataImpl value,
          $Res Function(_$PokemonFlavorTextDataImpl) then) =
      __$$PokemonFlavorTextDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "flavor_text") String text,
      @JsonKey(name: "language") PokemonLangData lang});

  @override
  $PokemonLangDataCopyWith<$Res> get lang;
}

/// @nodoc
class __$$PokemonFlavorTextDataImplCopyWithImpl<$Res>
    extends _$PokemonFlavorTextDataCopyWithImpl<$Res,
        _$PokemonFlavorTextDataImpl>
    implements _$$PokemonFlavorTextDataImplCopyWith<$Res> {
  __$$PokemonFlavorTextDataImplCopyWithImpl(_$PokemonFlavorTextDataImpl _value,
      $Res Function(_$PokemonFlavorTextDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonFlavorTextData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? lang = null,
  }) {
    return _then(_$PokemonFlavorTextDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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
class _$PokemonFlavorTextDataImpl implements _PokemonFlavorTextData {
  const _$PokemonFlavorTextDataImpl(
      {@JsonKey(name: "flavor_text") required this.text,
      @JsonKey(name: "language") required this.lang});

  factory _$PokemonFlavorTextDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonFlavorTextDataImplFromJson(json);

  @override
  @JsonKey(name: "flavor_text")
  final String text;
  @override
  @JsonKey(name: "language")
  final PokemonLangData lang;

  @override
  String toString() {
    return 'PokemonFlavorTextData(text: $text, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFlavorTextDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, lang);

  /// Create a copy of PokemonFlavorTextData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFlavorTextDataImplCopyWith<_$PokemonFlavorTextDataImpl>
      get copyWith => __$$PokemonFlavorTextDataImplCopyWithImpl<
          _$PokemonFlavorTextDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonFlavorTextDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonFlavorTextData implements PokemonFlavorTextData {
  const factory _PokemonFlavorTextData(
          {@JsonKey(name: "flavor_text") required final String text,
          @JsonKey(name: "language") required final PokemonLangData lang}) =
      _$PokemonFlavorTextDataImpl;

  factory _PokemonFlavorTextData.fromJson(Map<String, dynamic> json) =
      _$PokemonFlavorTextDataImpl.fromJson;

  @override
  @JsonKey(name: "flavor_text")
  String get text;
  @override
  @JsonKey(name: "language")
  PokemonLangData get lang;

  /// Create a copy of PokemonFlavorTextData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonFlavorTextDataImplCopyWith<_$PokemonFlavorTextDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
