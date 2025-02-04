import 'package:flutter/material.dart';
import '../data/sports_data.dart';
import '../models/media.dart';

class SportsFavoritesPage extends StatelessWidget {
  const SportsFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteSports =
        sports.where((sport) => sport.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports Favoris"),
      ),
      body: favoriteSports.isEmpty
          ? const Center(
              child: Text(
                "Aucun sport ajouté aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteSports.length,
              itemBuilder: (context, index) {
                final sport = favoriteSports[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.network(
                      sport.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(sport.title),
                    subtitle: Text(sport.description),
                  ),
                );
              },
            ),
    );
  }
}
