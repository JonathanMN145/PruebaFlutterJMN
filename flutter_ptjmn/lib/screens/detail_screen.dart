import 'package:flutter/material.dart';
import '../models/character.dart';

class DetailScreen extends StatelessWidget {
  final Character character;

  const DetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(character.image),
            const SizedBox(height: 16),
            Text('Estado: ${character.status}', style: const TextStyle(fontSize: 18)),
            Text('Especie: ${character.species}', style: const TextStyle(fontSize: 18)),
            Text('Género: ${character.gender}', style: const TextStyle(fontSize: 18)),
            Text('Origen: ${character.origin}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
