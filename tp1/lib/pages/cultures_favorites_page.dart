import 'package:flutter/material.dart';
import '../data/cultures_data.dart';
import '../models/media.dart';

class CulturesFavoritesPage extends StatefulWidget {
  const CulturesFavoritesPage({super.key});

  @override
  State<CulturesFavoritesPage> createState() => _CulturesFavoritesPageState();
}

class _CulturesFavoritesPageState extends State<CulturesFavoritesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteCultures =
        cultures.where((culture) => culture.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cultures Favoris"),
      ),
      body: favoriteCultures.isEmpty
          ? const Center(
              child: Text(
                "Aucune culture ajoutée aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteCultures.length,
              itemBuilder: (context, index) {
                final culture = favoriteCultures[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  显示本地图片，大小与 `CitiesFavoritesPage` 一致
                      Image.asset(
                        culture.imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(culture.title),
                        subtitle: Text(culture.description),
                        trailing: IconButton(
                          icon: Icon(
                            culture.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: culture.isLiked ? Colors.red : null,
                          ),
                          onPressed: () {
                            toggleLike(culture);
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
