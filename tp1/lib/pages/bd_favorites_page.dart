import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class BDFavoritesPage extends StatelessWidget {
  const BDFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 筛选出被标记为收藏的漫画
    List<Media> favoriteBDs = bds.where((bd) => bd.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite BDs"),
      ),
      body: favoriteBDs.isEmpty
          ? const Center(
              child: Text(
                "No favorite BDs yet!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView(
              children: favoriteBDs.map((bd) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      bd.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(bd.title),
                    subtitle: Text(bd.description),
                  ),
                );
              }).toList(),
            ),
    );
  }
}
