import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/api/api_client.dart';
import 'package:ram_app/services/api/endpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_service.g.dart';

@riverpod
Future<Character> getCharacter(Ref ref) async {
  final apiClient = ref.watch(apiClientProvider);

  final response = await apiClient.get('${Endpoints.characters}/10');

  return Character.fromJson(response.data);
}

@riverpod
class Characters extends _$Characters {
  @override
  Future<List<Character>> build() async {
    final apiClient = ref.watch(apiClientProvider);

    final response = await apiClient.get(Endpoints.characters);

    final List<dynamic> results = response.data["results"];

    return results.map((json) => Character.fromJson(json)).toList();
  }

  Future<void> addCharacter() async {
    await Future.delayed(Duration(seconds: 3));

    ref.invalidateSelf();

    await future;
  }
}
