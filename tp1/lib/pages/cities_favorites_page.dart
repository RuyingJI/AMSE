import 'package:flutter/material.dart';
import '../data/cultures_data.dart';
import '../models/media.dart';

class CulturesFavoritesPage extends StatelessWidget {
  const CulturesFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteCultures =
        cultures.where((culture) => culture.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cultures Favoris"),
      ),
      body: favoriteCultures.isEmpty
          ? const Center(
              child: Text(
                "Aucune culture ajoutée aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteCultures.length,
              itemBuilder: (context, index) {
                final culture = favoriteCultures[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.network(
                      culture.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(culture.title),
                    subtitle: Text(culture.description),
                  ),
                );
              },
            ),
    );
  }
}
