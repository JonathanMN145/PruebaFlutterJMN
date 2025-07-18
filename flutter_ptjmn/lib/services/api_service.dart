import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character.dart';

class ApiService {
  static const String baseUrl = 'https://rickandmortyapi.com/api';

  Future<List<Character>> fetchCharacters() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/character'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data['results'] != null) {
          List<dynamic> characters = data['results'];
          return characters
              .map((characterData) => Character.fromJson(characterData))
              .toList();
        } else {
          throw Exception('No characters data found in response');
        }
      } else {
        throw Exception('Failed to load characters. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching characters: $e');
    }
  }
}
