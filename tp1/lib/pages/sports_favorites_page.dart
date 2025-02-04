import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class SportsFavoritesPage extends StatelessWidget {
  const SportsFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 筛选出被标记为收藏的体育项目
    List<Media> favoriteSports =
        sports.where((sport) => sport.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Sports"),
      ),
      body: favoriteSports.isEmpty
          ? const Center(
              child: Text(
                "No favorite sports yet!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView(
              children: favoriteSports.map((sport) {
                return Card(
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
              }).toList(),
            ),
    );
  }
}
