import 'package:flutter/material.dart';
import '../models/character.dart';
import '../services/api_service.dart';

class CharacterProvider with ChangeNotifier {
  List<Character> _characters = [];
  bool _isLoading = true;

  List<Character> get characters => _characters;
  bool get isLoading => _isLoading;

  Future<void> loadCharacters() async {
    try {
      _isLoading = true;
      notifyListeners();

      _characters = await ApiService().fetchCharacters();
    } catch (e) {
      print('Error loading characters: $e');
      _characters = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
