// import 'package:dio/dio.dart';
// import 'package:ram_app/models/character/character.dart';

// class CharacterService {
//   final Dio dio;

//   CharacterService(this.dio);

//   Future<List<Character>> getAll() async {
//     final response = await dio.get("/character");
//     return (response.data["results"] as List)
//         .map((json) => Character.fromJson(json))
//         .toList();
//   }
// }
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/api/api_client.dart';
import 'package:ram_app/services/api/endpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
Future<Character> getAll(Ref ref) async {
  final apiClient = ref.watch(apiClientProvider);

  final response = await apiClient.get('${Endpoints.characters}/1');

  return Character.fromJson(response.data);
}
