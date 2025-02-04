import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class SeriesFavoritesPage extends StatelessWidget {
  const SeriesFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 筛选出被标记为收藏的系列
    List<Media> favoriteSeries =
        series.where((serie) => serie.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Series"),
      ),
      body: favoriteSeries.isEmpty
          ? const Center(
              child: Text(
                "No favorite series yet!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView(
              children: favoriteSeries.map((serie) {
                return Card(
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
              }).toList(),
            ),
    );
  }
}
