import 'package:flutter/material.dart';
import 'package:ram_app/components/character_card.dart';

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
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
            CharacterCard("Mi primer personaje"),
          ],
        ),
      ),
    );
  }
}
