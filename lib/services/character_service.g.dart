// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$charactersHash() => r'aef5dc98a8dce724e655cd7f7166d31e871d4911';

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

abstract class _$Characters
    extends BuildlessAutoDisposeAsyncNotifier<List<Character>> {
  late final String searchValue;

  FutureOr<List<Character>> build({String searchValue = ""});
}

/// See also [Characters].
@ProviderFor(Characters)
const charactersProvider = CharactersFamily();

/// See also [Characters].
class CharactersFamily extends Family<AsyncValue<List<Character>>> {
  /// See also [Characters].
  const CharactersFamily();

  /// See also [Characters].
  CharactersProvider call({String searchValue = ""}) {
    return CharactersProvider(searchValue: searchValue);
  }

  @override
  CharactersProvider getProviderOverride(
    covariant CharactersProvider provider,
  ) {
    return call(searchValue: provider.searchValue);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'charactersProvider';
}

/// See also [Characters].
class CharactersProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Characters, List<Character>> {
  /// See also [Characters].
  CharactersProvider({String searchValue = ""})
    : this._internal(
        () => Characters()..searchValue = searchValue,
        from: charactersProvider,
        name: r'charactersProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$charactersHash,
        dependencies: CharactersFamily._dependencies,
        allTransitiveDependencies: CharactersFamily._allTransitiveDependencies,
        searchValue: searchValue,
      );

  CharactersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchValue,
  }) : super.internal();

  final String searchValue;

  @override
  FutureOr<List<Character>> runNotifierBuild(covariant Characters notifier) {
    return notifier.build(searchValue: searchValue);
  }

  @override
  Override overrideWith(Characters Function() create) {
    return ProviderOverride(
      origin: this,
      override: CharactersProvider._internal(
        () => create()..searchValue = searchValue,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchValue: searchValue,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Characters, List<Character>>
  createElement() {
    return _CharactersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CharactersProvider && other.searchValue == searchValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CharactersRef on AutoDisposeAsyncNotifierProviderRef<List<Character>> {
  /// The parameter `searchValue` of this provider.
  String get searchValue;
}

class _CharactersProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Characters, List<Character>>
    with CharactersRef {
  _CharactersProviderElement(super.provider);

  @override
  String get searchValue => (origin as CharactersProvider).searchValue;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
