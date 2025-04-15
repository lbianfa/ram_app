import 'package:go_router/go_router.dart';
import 'package:ram_app/pages/characters_page.dart';
import 'package:ram_app/pages/character_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: "/", redirect: (context, state) => "/characters"),
    GoRoute(
      path: "/characters",
      name: 'characters',
      builder: (context, state) => const CharactersPage(),
    ),
    GoRoute(
      path: "/character",
      name: 'character',
      builder: (context, state) => const CharacterPage(),
    ),
  ],
);
