import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String name;

  const CharacterCard(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Text(name, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}
