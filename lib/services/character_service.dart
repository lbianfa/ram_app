import 'package:dio/dio.dart';
import 'package:ram_app/types/character.dart';

class CharacterService {
  final Dio dio;

  CharacterService(this.dio);

  Future<List<Character>> getAll() async {
    final response = await dio.get("/character");
    return (response.data["results"] as List)
        .map((json) => Character.fromJson(json))
        .toList();
  }
}
