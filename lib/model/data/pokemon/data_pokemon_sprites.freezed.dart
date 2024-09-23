// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_pokemon_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpritesData _$PokemonSpritesDataFromJson(Map<String, dynamic> json) {
  return _PokemonSpritesData.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesData {
  @JsonKey(name: "other")
  PokemonOtherSpritesData get others => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpritesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpritesDataCopyWith<PokemonSpritesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesDataCopyWith<$Res> {
  factory $PokemonSpritesDataCopyWith(
          PokemonSpritesData value, $Res Function(PokemonSpritesData) then) =
      _$PokemonSpritesDataCopyWithImpl<$Res, PokemonSpritesData>;
  @useResult
  $Res call({@JsonKey(name: "other") PokemonOtherSpritesData others});

  $PokemonOtherSpritesDataCopyWith<$Res> get others;
}

/// @nodoc
class _$PokemonSpritesDataCopyWithImpl<$Res, $Val extends PokemonSpritesData>
    implements $PokemonSpritesDataCopyWith<$Res> {
  _$PokemonSpritesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? others = null,
  }) {
    return _then(_value.copyWith(
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as PokemonOtherSpritesData,
    ) as $Val);
  }

  /// Create a copy of PokemonSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonOtherSpritesDataCopyWith<$Res> get others {
    return $PokemonOtherSpritesDataCopyWith<$Res>(_value.others, (value) {
      return _then(_value.copyWith(others: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpritesDataImplCopyWith<$Res>
    implements $PokemonSpritesDataCopyWith<$Res> {
  factory _$$PokemonSpritesDataImplCopyWith(_$PokemonSpritesDataImpl value,
          $Res Function(_$PokemonSpritesDataImpl) then) =
      __$$PokemonSpritesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "other") PokemonOtherSpritesData others});

  @override
  $PokemonOtherSpritesDataCopyWith<$Res> get others;
}

/// @nodoc
class __$$PokemonSpritesDataImplCopyWithImpl<$Res>
    extends _$PokemonSpritesDataCopyWithImpl<$Res, _$PokemonSpritesDataImpl>
    implements _$$PokemonSpritesDataImplCopyWith<$Res> {
  __$$PokemonSpritesDataImplCopyWithImpl(_$PokemonSpritesDataImpl _value,
      $Res Function(_$PokemonSpritesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? others = null,
  }) {
    return _then(_$PokemonSpritesDataImpl(
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as PokemonOtherSpritesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesDataImpl implements _PokemonSpritesData {
  const _$PokemonSpritesDataImpl(
      {@JsonKey(name: "other") required this.others});

  factory _$PokemonSpritesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesDataImplFromJson(json);

  @override
  @JsonKey(name: "other")
  final PokemonOtherSpritesData others;

  @override
  String toString() {
    return 'PokemonSpritesData(others: $others)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesDataImpl &&
            (identical(other.others, others) || other.others == others));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, others);

  /// Create a copy of PokemonSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesDataImplCopyWith<_$PokemonSpritesDataImpl> get copyWith =>
      __$$PokemonSpritesDataImplCopyWithImpl<_$PokemonSpritesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpritesData implements PokemonSpritesData {
  const factory _PokemonSpritesData(
          {@JsonKey(name: "other")
          required final PokemonOtherSpritesData others}) =
      _$PokemonSpritesDataImpl;

  factory _PokemonSpritesData.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesDataImpl.fromJson;

  @override
  @JsonKey(name: "other")
  PokemonOtherSpritesData get others;

  /// Create a copy of PokemonSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesDataImplCopyWith<_$PokemonSpritesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonOtherSpritesData _$PokemonOtherSpritesDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonOtherSpritesData.fromJson(json);
}

/// @nodoc
mixin _$PokemonOtherSpritesData {
  @JsonKey(name: "official-artwork")
  PokemonImageData get official => throw _privateConstructorUsedError;
  @JsonKey(name: "dream_world")
  PokemonImageData get dreamWorld => throw _privateConstructorUsedError;
  @JsonKey(name: "home")
  PokemonImageData get home => throw _privateConstructorUsedError;
  @JsonKey(name: "showdown")
  PokemonImageData get showdown => throw _privateConstructorUsedError;

  /// Serializes this PokemonOtherSpritesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonOtherSpritesDataCopyWith<PokemonOtherSpritesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOtherSpritesDataCopyWith<$Res> {
  factory $PokemonOtherSpritesDataCopyWith(PokemonOtherSpritesData value,
          $Res Function(PokemonOtherSpritesData) then) =
      _$PokemonOtherSpritesDataCopyWithImpl<$Res, PokemonOtherSpritesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "official-artwork") PokemonImageData official,
      @JsonKey(name: "dream_world") PokemonImageData dreamWorld,
      @JsonKey(name: "home") PokemonImageData home,
      @JsonKey(name: "showdown") PokemonImageData showdown});

  $PokemonImageDataCopyWith<$Res> get official;
  $PokemonImageDataCopyWith<$Res> get dreamWorld;
  $PokemonImageDataCopyWith<$Res> get home;
  $PokemonImageDataCopyWith<$Res> get showdown;
}

/// @nodoc
class _$PokemonOtherSpritesDataCopyWithImpl<$Res,
        $Val extends PokemonOtherSpritesData>
    implements $PokemonOtherSpritesDataCopyWith<$Res> {
  _$PokemonOtherSpritesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? dreamWorld = null,
    Object? home = null,
    Object? showdown = null,
  }) {
    return _then(_value.copyWith(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
      dreamWorld: null == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
      showdown: null == showdown
          ? _value.showdown
          : showdown // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
    ) as $Val);
  }

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonImageDataCopyWith<$Res> get official {
    return $PokemonImageDataCopyWith<$Res>(_value.official, (value) {
      return _then(_value.copyWith(official: value) as $Val);
    });
  }

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonImageDataCopyWith<$Res> get dreamWorld {
    return $PokemonImageDataCopyWith<$Res>(_value.dreamWorld, (value) {
      return _then(_value.copyWith(dreamWorld: value) as $Val);
    });
  }

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonImageDataCopyWith<$Res> get home {
    return $PokemonImageDataCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonImageDataCopyWith<$Res> get showdown {
    return $PokemonImageDataCopyWith<$Res>(_value.showdown, (value) {
      return _then(_value.copyWith(showdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonOtherSpritesDataImplCopyWith<$Res>
    implements $PokemonOtherSpritesDataCopyWith<$Res> {
  factory _$$PokemonOtherSpritesDataImplCopyWith(
          _$PokemonOtherSpritesDataImpl value,
          $Res Function(_$PokemonOtherSpritesDataImpl) then) =
      __$$PokemonOtherSpritesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "official-artwork") PokemonImageData official,
      @JsonKey(name: "dream_world") PokemonImageData dreamWorld,
      @JsonKey(name: "home") PokemonImageData home,
      @JsonKey(name: "showdown") PokemonImageData showdown});

  @override
  $PokemonImageDataCopyWith<$Res> get official;
  @override
  $PokemonImageDataCopyWith<$Res> get dreamWorld;
  @override
  $PokemonImageDataCopyWith<$Res> get home;
  @override
  $PokemonImageDataCopyWith<$Res> get showdown;
}

/// @nodoc
class __$$PokemonOtherSpritesDataImplCopyWithImpl<$Res>
    extends _$PokemonOtherSpritesDataCopyWithImpl<$Res,
        _$PokemonOtherSpritesDataImpl>
    implements _$$PokemonOtherSpritesDataImplCopyWith<$Res> {
  __$$PokemonOtherSpritesDataImplCopyWithImpl(
      _$PokemonOtherSpritesDataImpl _value,
      $Res Function(_$PokemonOtherSpritesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? dreamWorld = null,
    Object? home = null,
    Object? showdown = null,
  }) {
    return _then(_$PokemonOtherSpritesDataImpl(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
      dreamWorld: null == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
      showdown: null == showdown
          ? _value.showdown
          : showdown // ignore: cast_nullable_to_non_nullable
              as PokemonImageData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonOtherSpritesDataImpl implements _PokemonOtherSpritesData {
  const _$PokemonOtherSpritesDataImpl(
      {@JsonKey(name: "official-artwork") required this.official,
      @JsonKey(name: "dream_world") required this.dreamWorld,
      @JsonKey(name: "home") required this.home,
      @JsonKey(name: "showdown") required this.showdown});

  factory _$PokemonOtherSpritesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonOtherSpritesDataImplFromJson(json);

  @override
  @JsonKey(name: "official-artwork")
  final PokemonImageData official;
  @override
  @JsonKey(name: "dream_world")
  final PokemonImageData dreamWorld;
  @override
  @JsonKey(name: "home")
  final PokemonImageData home;
  @override
  @JsonKey(name: "showdown")
  final PokemonImageData showdown;

  @override
  String toString() {
    return 'PokemonOtherSpritesData(official: $official, dreamWorld: $dreamWorld, home: $home, showdown: $showdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonOtherSpritesDataImpl &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.dreamWorld, dreamWorld) ||
                other.dreamWorld == dreamWorld) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.showdown, showdown) ||
                other.showdown == showdown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, official, dreamWorld, home, showdown);

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonOtherSpritesDataImplCopyWith<_$PokemonOtherSpritesDataImpl>
      get copyWith => __$$PokemonOtherSpritesDataImplCopyWithImpl<
          _$PokemonOtherSpritesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonOtherSpritesDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonOtherSpritesData implements PokemonOtherSpritesData {
  const factory _PokemonOtherSpritesData(
      {@JsonKey(name: "official-artwork")
      required final PokemonImageData official,
      @JsonKey(name: "dream_world") required final PokemonImageData dreamWorld,
      @JsonKey(name: "home") required final PokemonImageData home,
      @JsonKey(name: "showdown")
      required final PokemonImageData
          showdown}) = _$PokemonOtherSpritesDataImpl;

  factory _PokemonOtherSpritesData.fromJson(Map<String, dynamic> json) =
      _$PokemonOtherSpritesDataImpl.fromJson;

  @override
  @JsonKey(name: "official-artwork")
  PokemonImageData get official;
  @override
  @JsonKey(name: "dream_world")
  PokemonImageData get dreamWorld;
  @override
  @JsonKey(name: "home")
  PokemonImageData get home;
  @override
  @JsonKey(name: "showdown")
  PokemonImageData get showdown;

  /// Create a copy of PokemonOtherSpritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonOtherSpritesDataImplCopyWith<_$PokemonOtherSpritesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonImageData _$PokemonImageDataFromJson(Map<String, dynamic> json) {
  return _PokemonImageData.fromJson(json);
}

/// @nodoc
mixin _$PokemonImageData {
  @JsonKey(name: "front_default")
  String get image => throw _privateConstructorUsedError;

  /// Serializes this PokemonImageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonImageDataCopyWith<PokemonImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonImageDataCopyWith<$Res> {
  factory $PokemonImageDataCopyWith(
          PokemonImageData value, $Res Function(PokemonImageData) then) =
      _$PokemonImageDataCopyWithImpl<$Res, PokemonImageData>;
  @useResult
  $Res call({@JsonKey(name: "front_default") String image});
}

/// @nodoc
class _$PokemonImageDataCopyWithImpl<$Res, $Val extends PokemonImageData>
    implements $PokemonImageDataCopyWith<$Res> {
  _$PokemonImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImageDataImplCopyWith<$Res>
    implements $PokemonImageDataCopyWith<$Res> {
  factory _$$PokemonImageDataImplCopyWith(_$PokemonImageDataImpl value,
          $Res Function(_$PokemonImageDataImpl) then) =
      __$$PokemonImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "front_default") String image});
}

/// @nodoc
class __$$PokemonImageDataImplCopyWithImpl<$Res>
    extends _$PokemonImageDataCopyWithImpl<$Res, _$PokemonImageDataImpl>
    implements _$$PokemonImageDataImplCopyWith<$Res> {
  __$$PokemonImageDataImplCopyWithImpl(_$PokemonImageDataImpl _value,
      $Res Function(_$PokemonImageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$PokemonImageDataImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImageDataImpl implements _PokemonImageData {
  const _$PokemonImageDataImpl(
      {@JsonKey(name: "front_default") required this.image});

  factory _$PokemonImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImageDataImplFromJson(json);

  @override
  @JsonKey(name: "front_default")
  final String image;

  @override
  String toString() {
    return 'PokemonImageData(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImageDataImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of PokemonImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImageDataImplCopyWith<_$PokemonImageDataImpl> get copyWith =>
      __$$PokemonImageDataImplCopyWithImpl<_$PokemonImageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImageDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonImageData implements PokemonImageData {
  const factory _PokemonImageData(
          {@JsonKey(name: "front_default") required final String image}) =
      _$PokemonImageDataImpl;

  factory _PokemonImageData.fromJson(Map<String, dynamic> json) =
      _$PokemonImageDataImpl.fromJson;

  @override
  @JsonKey(name: "front_default")
  String get image;

  /// Create a copy of PokemonImageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonImageDataImplCopyWith<_$PokemonImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
