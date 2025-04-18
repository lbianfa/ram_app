import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ram_app/components/character_card.dart';
import 'package:ram_app/components/character_card_skeleton.dart';
import 'package:ram_app/models/character/character.dart';
import 'package:ram_app/services/character_service.dart';

class CharactersPage extends ConsumerStatefulWidget {
  const CharactersPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CharactersPageState();
  }
}

class _CharactersPageState extends ConsumerState<CharactersPage> {
  final _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Character>> characters = ref.watch(
      charactersProvider,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset("assets/logo.png", fit: BoxFit.contain),
        ),
        title: Text("Rick & Morty"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: switch (characters) {
        AsyncData(:final value) => Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: value.length + 1,
            itemBuilder: (context, index) {
              if (index < value.length) {
                final c = value[index];
                return CharacterCard(c, key: ValueKey("character${c.id}"));
              } else if (_isLoading) {
                // Loading indicator at bottom
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: CircularProgressIndicator(color: Colors.amberAccent),
                  ),
                );
              }

              return SizedBox(width: 10);
            },
          ),
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

  void _onScroll() async {
    if (_isLoading) return;

    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
      setState(() {
        _isLoading = true;
      });

      await ref.read(charactersProvider.notifier).loadMore();

      setState(() {
        _isLoading = false;
      });
    }
  }
}
