import 'package:flutter/material.dart';
import '../data/films_data.dart';
import '../models/media.dart';

class FilmPage extends StatefulWidget {
  const FilmPage({super.key});

  @override
  State<FilmPage> createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Films Chinois"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🌟 Introduction sur Shen Teng et Ma Li
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.amber.shade100, // Fond léger pour démarquer
            child: const Text(
              "🎭 Shen Teng et Ma Li sont, à mes yeux, les deux meilleurs acteurs de comédie en Chine. "
              "Ils ont apporté au public de nombreux films, sketches et pièces de théâtre aussi drôles que significatifs !",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
              height: 10), // Espacement entre l'introduction et la liste

          // 📽 Liste des films
          Expanded(
            child: ListView(
              children: films.map((film) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🖼 Affichage de l'image (grand format)
                      Image.asset(
                        film.imageUrl,
                        width: double.infinity,
                        height: 800,
                        fit: BoxFit.cover,
                      ),
                      // 📜 Informations sur le film
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
                          onPressed: () => toggleLike(film),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
