import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_pokemon_url.freezed.dart';
part 'data_pokemon_url.g.dart';

@freezed
class PokemonUrlData with _$PokemonUrlData {
  const PokemonUrlData._();
  const factory PokemonUrlData({
    @JsonKey(name: "url") required String url,
  }) = _PokemonUrlData;

  @JsonKey(includeFromJson: false)
  String get id {
    final uri = Uri.parse(url);
    return uri.pathSegments[uri.pathSegments.length - 2];
  }

  factory PokemonUrlData.fromJson(Map<String, Object?> data) =>
      _$PokemonUrlDataFromJson(data);
}