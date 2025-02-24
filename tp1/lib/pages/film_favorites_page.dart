import 'package:flutter/material.dart';
import '../data/films_data.dart';
import '../models/media.dart';

class FilmFavoritesPage extends StatefulWidget {
  const FilmFavoritesPage({super.key});

  @override
  State<FilmFavoritesPage> createState() => _FilmFavoritesPageState();
}

class _FilmFavoritesPageState extends State<FilmFavoritesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteFilms = films.where((film) => film.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Films Favoris"),
      ),
      body: favoriteFilms.isEmpty
          ? const Center(
              child: Text(
                "Aucun film ajouté aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteFilms.length,
              itemBuilder: (context, index) {
                final film = favoriteFilms[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  图片显示
                      Image.asset(
                        film.imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(film.title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(film.description),
                            if (film.actors != null)
                              Text(
                                "Acteurs : ${film.actors}",
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic),
                              ),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            film.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: film.isLiked ? Colors.red : null,
                          ),
                          onPressed: () {
                            toggleLike(film);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
