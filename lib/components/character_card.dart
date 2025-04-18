import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ram_app/models/character/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLive = character.status == "Alive";

    return GestureDetector(
      onTap: () {
        context.pushNamed("character", extra: character);
      },
      onDoubleTap:
          () => context.pushNamed(
            "get-character",
            pathParameters: {'id': character.id.toString()},
          ),
      child: Card(
        elevation: 4,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Color.fromARGB(255, 51, 59, 83),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              character.image,
              width: 170,
              errorBuilder: (_, _, _) {
                return Image.asset("assets/placeholder.jpeg", width: 170);
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isLive ? Colors.green : Colors.red,
                          ),
                        ),
                        Text(
                          isLive ? "Vivo" : "Muerto",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    Text(
                      "Última ubicación conocida:",
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white54),
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      character.location.name,
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
