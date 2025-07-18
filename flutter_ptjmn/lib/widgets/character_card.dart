import 'package:flutter/material.dart';
import '../models/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(character.image),
        ),
        title: Text(character.name),
        subtitle: Text(character.species),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
