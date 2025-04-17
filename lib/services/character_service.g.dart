// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCharacterHash() => r'0642c271c776db7d1a877df732792258c974e0bf';

/// See also [getCharacter].
@ProviderFor(getCharacter)
final getCharacterProvider = AutoDisposeFutureProvider<Character>.internal(
  getCharacter,
  name: r'getCharacterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCharacterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCharacterRef = AutoDisposeFutureProviderRef<Character>;
String _$charactersHash() => r'5d2f42909a59cacfb427fcfc811b1be9c18926d0';

/// See also [Characters].
@ProviderFor(Characters)
final charactersProvider =
    AutoDisposeAsyncNotifierProvider<Characters, List<Character>>.internal(
      Characters.new,
      name: r'charactersProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$charactersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Characters = AutoDisposeAsyncNotifier<List<Character>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
