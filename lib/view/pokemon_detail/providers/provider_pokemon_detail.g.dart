// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_pokemon_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonDetailViewModelHash() =>
    r'95a7cde1a74cfb5f8211075846e78200ccf6d202';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PokemonDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<Pokemon?> {
  late final String id;
  late final Pokemon? initialValue;

  FutureOr<Pokemon?> build(
    String id, {
    Pokemon? initialValue,
  });
}

/// See also [PokemonDetailViewModel].
@ProviderFor(PokemonDetailViewModel)
const pokemonDetailViewModelProvider = PokemonDetailViewModelFamily();

/// See also [PokemonDetailViewModel].
class PokemonDetailViewModelFamily extends Family<AsyncValue<Pokemon?>> {
  /// See also [PokemonDetailViewModel].
  const PokemonDetailViewModelFamily();

  /// See also [PokemonDetailViewModel].
  PokemonDetailViewModelProvider call(
    String id, {
    Pokemon? initialValue,
  }) {
    return PokemonDetailViewModelProvider(
      id,
      initialValue: initialValue,
    );
  }

  @override
  PokemonDetailViewModelProvider getProviderOverride(
    covariant PokemonDetailViewModelProvider provider,
  ) {
    return call(
      provider.id,
      initialValue: provider.initialValue,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonDetailViewModelProvider';
}

/// See also [PokemonDetailViewModel].
class PokemonDetailViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PokemonDetailViewModel,
        Pokemon?> {
  /// See also [PokemonDetailViewModel].
  PokemonDetailViewModelProvider(
    String id, {
    Pokemon? initialValue,
  }) : this._internal(
          () => PokemonDetailViewModel()
            ..id = id
            ..initialValue = initialValue,
          from: pokemonDetailViewModelProvider,
          name: r'pokemonDetailViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonDetailViewModelHash,
          dependencies: PokemonDetailViewModelFamily._dependencies,
          allTransitiveDependencies:
              PokemonDetailViewModelFamily._allTransitiveDependencies,
          id: id,
          initialValue: initialValue,
        );

  PokemonDetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.initialValue,
  }) : super.internal();

  final String id;
  final Pokemon? initialValue;

  @override
  FutureOr<Pokemon?> runNotifierBuild(
    covariant PokemonDetailViewModel notifier,
  ) {
    return notifier.build(
      id,
      initialValue: initialValue,
    );
  }

  @override
  Override overrideWith(PokemonDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonDetailViewModelProvider._internal(
        () => create()
          ..id = id
          ..initialValue = initialValue,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        initialValue: initialValue,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PokemonDetailViewModel, Pokemon?>
      createElement() {
    return _PokemonDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailViewModelProvider &&
        other.id == id &&
        other.initialValue == initialValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, initialValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonDetailViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<Pokemon?> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `initialValue` of this provider.
  Pokemon? get initialValue;
}

class _PokemonDetailViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PokemonDetailViewModel,
        Pokemon?> with PokemonDetailViewModelRef {
  _PokemonDetailViewModelProviderElement(super.provider);

  @override
  String get id => (origin as PokemonDetailViewModelProvider).id;
  @override
  Pokemon? get initialValue =>
      (origin as PokemonDetailViewModelProvider).initialValue;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
