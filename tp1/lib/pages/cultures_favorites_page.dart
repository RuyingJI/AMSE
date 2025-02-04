import 'package:flutter/material.dart';
import '../data/cities_data.dart';
import '../models/media.dart';

class CitiesFavoritesPage extends StatelessWidget {
  const CitiesFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteCities = cities.where((city) => city.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Villes Favoris"),
      ),
      body: favoriteCities.isEmpty
          ? const Center(
              child: Text(
                "Aucune ville ajoutée aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteCities.length,
              itemBuilder: (context, index) {
                final city = favoriteCities[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.network(
                      city.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(city.title),
                    subtitle: Text(city.description),
                  ),
                );
              },
            ),
    );
  }
}
