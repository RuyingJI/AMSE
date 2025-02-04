import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class FilmFavoritesPage extends StatelessWidget {
  const FilmFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 筛选出被标记为收藏的电影
    List<Media> favoriteFilms = films.where((film) => film.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Films"),
      ),
      body: favoriteFilms.isEmpty
          ? const Center(
              child: Text(
                "No favorite films yet!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView(
              children: favoriteFilms.map((film) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      film.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(film.title),
                    subtitle: Text(film.description),
                  ),
                );
              }).toList(),
            ),
    );
  }
}
