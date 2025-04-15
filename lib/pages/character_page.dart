import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/character_service.dart';

class CharacterPage extends ConsumerWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Character> character = ref.watch(getCharacterProvider);

    return Scaffold(
      appBar: null,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 15)),
            Center(
              child: switch (character) {
                AsyncData(:final value) => Column(
                  children: [
                    Image.network(value.image),
                    Text("Personaje: ${value.name}"),
                    Text("Ubicación: ${value.location.name}"),
                  ],
                ),
                AsyncError() => const Text(
                  "Oops, algún error inesperado ocurrió",
                ),
                _ => const CircularProgressIndicator(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
