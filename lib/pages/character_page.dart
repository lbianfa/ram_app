import 'package:flutter/material.dart';
import 'package:ram_app/models/character/character.dart';

class CharacterPage extends StatelessWidget {
  final Character c;

  const CharacterPage(this.c, {super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLive = c.status == "Alive";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Personaje ${c.id}"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.only(top: 15)),
              Card(
                elevation: 4,
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(c.image),
              ),
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Text(
                          "Id:",
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: Colors.white54),
                        ),
                        Text(
                          c.id.toString(),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Text(
                          "Estado:",
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: Colors.white54),
                        ),
                        Text(
                          isLive ? "Vivo" : "Muerto",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isLive ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Text(
                      "Nombre:",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.white54),
                    ),
                    Text(
                      c.name,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.copyWith(color: Colors.white),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Text(
                      "Genero:",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.white54),
                    ),
                    Text(
                      c.gender,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.copyWith(color: Colors.white),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Text(
                      "Especie:",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.white54),
                    ),
                    Text(
                      c.species,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.copyWith(color: Colors.white),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Text(
                      "Origen:",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.white54),
                    ),
                    Text(
                      c.origin["name"],
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.copyWith(color: Colors.white),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 15)),
                    Text(
                      "Última ubicación:",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.white54),
                    ),
                    Text(
                      c.location.name,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.copyWith(color: Colors.white),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 35)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
