import 'package:flutter/material.dart';

class CharacterCreatorPage extends StatelessWidget {
  const CharacterCreatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Crear personaje"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: ElevatedButton(
          onPressed: () => 1,
          child: Text(
            "Crear personaje",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
