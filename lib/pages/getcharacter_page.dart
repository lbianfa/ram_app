import 'package:flutter/material.dart';

class GetcharacterPage extends StatelessWidget {
  final String characterId;

  const GetcharacterPage(this.characterId, {super.key});

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
                  // Image.network(c.image),
                  Text("Personaje: $characterId"),
                  Text("Ubicación: Example"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
