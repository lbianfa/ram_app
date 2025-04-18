import 'package:go_router/go_router.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/pages/character_creator_page.dart';
import 'package:ram_app/pages/characters_page.dart';
import 'package:ram_app/pages/character_page.dart';
import 'package:ram_app/pages/getcharacter_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: "/", redirect: (context, state) => "/characters"),
    GoRoute(
      path: "/characters",
      name: 'characters',
      builder: (context, state) => CharactersPage(),
    ),
    GoRoute(
      path: "/character",
      name: 'character',
      builder: (context, state) {
        final data = state.extra;
        final character =
            data is Character
                ? data
                : Character.fromJson(data as Map<String, dynamic>);
        return CharacterPage(character);
      },
    ),
    GoRoute(
      path: "/get-character/:id",
      name: 'get-character',
      builder: (context, state) {
        final id = state.pathParameters["id"]!;
        return GetcharacterPage(id);
      },
    ),
    GoRoute(
      path: "/create-character",
      name: 'create-character',
      builder: (context, state) => CharacterCreatorPage(),
    ),
  ],
);
