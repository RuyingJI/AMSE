import 'package:flutter/material.dart';
import '../data/cities_data.dart';
import '../models/media.dart';

class CitiesFavoritesPage extends StatefulWidget {
  const CitiesFavoritesPage({super.key});

  @override
  State<CitiesFavoritesPage> createState() => _CitiesFavoritesPageState();
}

class _CitiesFavoritesPageState extends State<CitiesFavoritesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteCities =
        cities.where((city) => city.isLiked).toList(); // 获取喜欢的城市

    return Scaffold(
      appBar: AppBar(
        title: const Text("Villes Favoris"),
      ),
      body: favoriteCities.isEmpty
          ? const Center(
              child: Text(
                "Aucune ville ajoutée aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteCities.length,
              itemBuilder: (context, index) {
                final city = favoriteCities[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 图片大一点
                      Image.asset(
                        city.imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(city.title),
                        subtitle: Text(city.description),
                        trailing: IconButton(
                          icon: Icon(
                            city.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: city.isLiked ? Colors.red : null,
                          ),
                          onPressed: () {
                            toggleLike(city);
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
