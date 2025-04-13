import 'package:flutter/material.dart';
import 'package:ram_app/components/character_card.dart';
import 'package:ram_app/components/character_card_skeleton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Rick & Morty"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: FutureBuilder(
        future: getAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ListView.builder(
              itemCount: 3,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => CharacterCardSkeleton(),
            );
          }

          final characters = snapshot.data!;
          return ListView(
            padding: const EdgeInsets.all(10),
            children: [...characters.map((c) => CharacterCard(c))],
          );
        },
      ),
    );
  }

  Future<List<String>> getAll() async {
    await Future.delayed(Duration(seconds: 3));
    return ["Rick", "Morty", "Summer"];
  }
}
