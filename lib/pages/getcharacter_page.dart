import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/character_service.dart';

class GetcharacterPage extends ConsumerWidget {
  final String characterId;

  const GetcharacterPage(this.characterId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Future<Character> character = ref
        .read(charactersProvider().notifier)
        .getById(characterId);

    return Scaffold(
      appBar: null,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: FutureBuilder(
          future: character,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              final value = snapshot.data!;

              return Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 15)),
                  Center(
                    child: Column(
                      children: [
                        Image.network(value.image),
                        Text("Personaje: ${value.id}"),
                        Text("Ubicación: Example"),
                      ],
                    ),
                  ),
                ],
              );
            }

            return const Center(child: Text("Cargando..."));
          },
        ),
      ),
    );
  }
}
