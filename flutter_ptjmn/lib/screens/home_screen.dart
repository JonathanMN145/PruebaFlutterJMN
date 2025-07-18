import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/character_provider.dart';
import '../widgets/character_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CharacterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Características Rick & Morty'),
        centerTitle: true,
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: provider.characters.length,
              itemBuilder: (context, index) {
                final character = provider.characters[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(character: character),
                      ),
                    );
                  },
                  child: CharacterCard(character: character),
                );
              },
            ),
    );
  }
}
