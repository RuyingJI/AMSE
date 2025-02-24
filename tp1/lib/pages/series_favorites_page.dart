import 'package:flutter/material.dart';
import '../data/series_data.dart';
import '../models/media.dart';

class SeriesFavoritesPage extends StatelessWidget {
  const SeriesFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteSeries =
        series.where((serie) => serie.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Séries Favoris"),
      ),
      body: favoriteSeries.isEmpty
          ? const Center(
              child: Text(
                "Aucune série ajoutée aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteSeries.length,
              itemBuilder: (context, index) {
                final serie = favoriteSeries[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.network(
                      serie.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(serie.title),
                    subtitle: Text(serie.description),
                  ),
                );
              },
            ),
    );
  }
}
