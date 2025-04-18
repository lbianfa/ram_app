import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/api/api_client.dart';
import 'package:ram_app/services/api/endpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_service.g.dart';

@riverpod
class Characters extends _$Characters {
  int _currentPage = 1;
  bool _isLastPage = false;
  bool _isLoadingMore = false;
  String _searchValue = "";

  final List<Character> _characters = [];

  @override
  Future<List<Character>> build({String searchValue = ""}) async {
    _searchValue = searchValue;
    return await _fetchCharacters();
  }

  Future<List<Character>> _fetchCharacters() async {
    if (_isLastPage || _isLoadingMore) return _characters;

    _isLoadingMore = true;

    final apiClient = ref.watch(apiClientProvider);
    final response = await apiClient.get(
      "${Endpoints.character}?page=$_currentPage&name=$_searchValue",
    );
    final List<dynamic> results = response.data["results"];
    final newCharacters =
        results.map((json) => Character.fromJson(json)).toList();

    _isLastPage = response.data["info"]["next"] == null;
    _characters.addAll(newCharacters);
    _currentPage++;
    _isLoadingMore = false;

    return _characters;
  }

  Future<void> loadMore() async {
    state = AsyncData(await _fetchCharacters());
  }

  Future<void> addCharacter() async {
    await Future.delayed(Duration(seconds: 3));

    ref.invalidateSelf();

    await future;
  }

  Future<Character> getById(String id) async {
    final apiClient = ref.watch(apiClientProvider);

    final response = await apiClient.get("${Endpoints.character}/$id");

    return Character.fromJson(response.data);
  }
}
