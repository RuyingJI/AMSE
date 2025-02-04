import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Series"),
      ),
      body: ListView(
        children: series.map((serie) {
          return Card(
            child: ListTile(
              leading: Image.network(serie.imageUrl,
                  width: 50, height: 50, fit: BoxFit.cover),
              title: Text(serie.title),
              subtitle: Text(serie.description),
              trailing: IconButton(
                icon: Icon(
                  serie.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: serie.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(
                    serie), // Appelle toggleLike pour mettre à jour l'état
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
