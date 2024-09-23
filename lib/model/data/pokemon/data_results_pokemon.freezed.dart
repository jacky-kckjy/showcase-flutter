// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_results_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonResultsData _$PokemonResultsDataFromJson(Map<String, dynamic> json) {
  return _PokemonResultsData.fromJson(json);
}

/// @nodoc
mixin _$PokemonResultsData {
  @JsonKey(name: "results")
  List<PokemonUrlData> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonResultsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonResultsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonResultsDataCopyWith<PokemonResultsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResultsDataCopyWith<$Res> {
  factory $PokemonResultsDataCopyWith(
          PokemonResultsData value, $Res Function(PokemonResultsData) then) =
      _$PokemonResultsDataCopyWithImpl<$Res, PokemonResultsData>;
  @useResult
  $Res call({@JsonKey(name: "results") List<PokemonUrlData> results});
}

/// @nodoc
class _$PokemonResultsDataCopyWithImpl<$Res, $Val extends PokemonResultsData>
    implements $PokemonResultsDataCopyWith<$Res> {
  _$PokemonResultsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonResultsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonUrlData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonResultsDataImplCopyWith<$Res>
    implements $PokemonResultsDataCopyWith<$Res> {
  factory _$$PokemonResultsDataImplCopyWith(_$PokemonResultsDataImpl value,
          $Res Function(_$PokemonResultsDataImpl) then) =
      __$$PokemonResultsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<PokemonUrlData> results});
}

/// @nodoc
class __$$PokemonResultsDataImplCopyWithImpl<$Res>
    extends _$PokemonResultsDataCopyWithImpl<$Res, _$PokemonResultsDataImpl>
    implements _$$PokemonResultsDataImplCopyWith<$Res> {
  __$$PokemonResultsDataImplCopyWithImpl(_$PokemonResultsDataImpl _value,
      $Res Function(_$PokemonResultsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonResultsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$PokemonResultsDataImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonUrlData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonResultsDataImpl implements _PokemonResultsData {
  const _$PokemonResultsDataImpl(
      {@JsonKey(name: "results") required final List<PokemonUrlData> results})
      : _results = results;

  factory _$PokemonResultsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResultsDataImplFromJson(json);

  final List<PokemonUrlData> _results;
  @override
  @JsonKey(name: "results")
  List<PokemonUrlData> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonResultsData(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResultsDataImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokemonResultsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResultsDataImplCopyWith<_$PokemonResultsDataImpl> get copyWith =>
      __$$PokemonResultsDataImplCopyWithImpl<_$PokemonResultsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResultsDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonResultsData implements PokemonResultsData {
  const factory _PokemonResultsData(
      {@JsonKey(name: "results")
      required final List<PokemonUrlData> results}) = _$PokemonResultsDataImpl;

  factory _PokemonResultsData.fromJson(Map<String, dynamic> json) =
      _$PokemonResultsDataImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<PokemonUrlData> get results;

  /// Create a copy of PokemonResultsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonResultsDataImplCopyWith<_$PokemonResultsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
