import 'package:flutter/material.dart';
import '../data/sports_data.dart';
import '../models/media.dart';

class SportsFavoritesPage extends StatefulWidget {
  const SportsFavoritesPage({super.key});

  @override
  State<SportsFavoritesPage> createState() => _SportsFavoritesPageState();
}

class _SportsFavoritesPageState extends State<SportsFavoritesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteSports =
        sports.where((sport) => sport.isLiked).toList(); // 获取喜欢的运动

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports Favoris"),
      ),
      body: favoriteSports.isEmpty
          ? const Center(
              child: Text(
                "Aucun sport ajouté aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteSports.length,
              itemBuilder: (context, index) {
                final sport = favoriteSports[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  显示本地图片
                      Image.asset(
                        sport.imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(sport.title),
                        subtitle: Text(sport.description),
                        trailing: IconButton(
                          icon: Icon(
                            sport.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: sport.isLiked ? Colors.red : null,
                          ),
                          onPressed: () {
                            toggleLike(sport);
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
