import 'package:flutter/material.dart';
import '../data/media_data.dart';
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
        title: const Text("Films"),
      ),
      body: ListView(
        children: films.map((film) {
          return Card(
            child: ListTile(
              leading: Image.network(film.imageUrl,
                  width: 50, height: 50, fit: BoxFit.cover),
              title: Text(film.title),
              subtitle: Text(film.description),
              trailing: IconButton(
                icon: Icon(
                  film.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: film.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(film),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
