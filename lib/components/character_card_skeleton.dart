import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharacterCardSkeleton extends StatelessWidget {
  const CharacterCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color.fromARGB(255, 51, 59, 83),
      highlightColor: Color.fromARGB(255, 46, 51, 64),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Color.fromARGB(255, 51, 59, 83),
        child: SizedBox(height: 170),
      ),
    );
  }
}
