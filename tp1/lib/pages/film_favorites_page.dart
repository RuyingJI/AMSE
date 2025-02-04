import 'package:flutter/material.dart';
import '../data/films_data.dart';
import '../models/media.dart';

class FilmFavoritesPage extends StatelessWidget {
  const FilmFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteFilms = films.where((film) => film.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Films"),
      ),
      body: ListView(
        children: favoriteFilms
            .map(
              (film) => ListTile(
                title: Text(film.title),
                subtitle: Text(film.description),
                leading: Image.network(
                  film.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
