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
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          final film = films[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Image.network(
                film.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(film.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(film.description),
                  if (film.actors != null)
                    Text(
                      "Acteurs : ${film.actors}",
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  film.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: film.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(film),
              ),
            ),
          );
        },
      ),
    );
  }
}
