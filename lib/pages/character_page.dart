import 'package:flutter/material.dart';
import 'package:ram_app/models/character/character.dart';

class CharacterPage extends StatelessWidget {
  final Character c;

  const CharacterPage(this.c, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 15)),
            Center(
              child: Column(
                children: [
                  Image.network(c.image),
                  Text("Personaje: ${c.name}"),
                  Text("Ubicación: ${c.location.name}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
