import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ram_app/services/character_service.dart';

class CharacterCreatorPage extends ConsumerStatefulWidget {
  const CharacterCreatorPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CharacterCreatorState();
}

class _CharacterCreatorState extends ConsumerState<CharacterCreatorPage> {
  Future<void>? _pendingAddCharacter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 28,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
                width: 45,
              ),
            ),
            Text("Crear personaje"),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: FutureBuilder(
        future: _pendingAddCharacter,
        builder: (context, snapshot) {
          final isErrored =
              snapshot.hasError &&
              snapshot.connectionState != ConnectionState.waiting;

          if (snapshot.connectionState == ConnectionState.done &&
              !snapshot.hasError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (Navigator.canPop(context)) {
                context.pop();
              }
            });
          }

          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final future =
                        ref.read(charactersProvider.notifier).addCharacter();

                    setState(() {
                      _pendingAddCharacter = future;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isErrored ? Colors.red : null,
                  ),
                  child: const Text("Agregar personaje"),
                ),
                if (snapshot.connectionState == ConnectionState.waiting) ...[
                  const SizedBox(width: 8),
                  const CircularProgressIndicator(color: Colors.amberAccent),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
