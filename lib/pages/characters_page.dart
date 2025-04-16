import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ram_app/components/character_card.dart';
import 'package:ram_app/components/character_card_skeleton.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/character_service.dart';

class CharactersPage extends ConsumerWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Character>> characters = ref.watch(
      charactersProvider,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Rick & Morty"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: switch (characters) {
        AsyncData(:final value) => ListView(
          padding: const EdgeInsets.all(10),
          children: [...value.map((c) => CharacterCard(c))],
        ),
        AsyncError() => const Text("Oops, algún error inesperado ocurrió"),
        _ => ListView.builder(
          itemCount: 20,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => CharacterCardSkeleton(),
        ),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed("create-character"),
        child: const Icon(Icons.add),
      ),
    );
  }
}
