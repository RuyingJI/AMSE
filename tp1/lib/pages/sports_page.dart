import 'package:flutter/material.dart';
import '../data/sports_data.dart';
import '../models/media.dart';

class SportsPage extends StatefulWidget {
  const SportsPage({super.key});

  @override
  State<SportsPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports"),
      ),
      body: ListView(
        children: sports.map((sport) {
          return Card(
            child: ListTile(
              leading: Image.network(sport.imageUrl,
                  width: 50, height: 50, fit: BoxFit.cover),
              title: Text(sport.title),
              subtitle: Text(sport.description),
              trailing: IconButton(
                icon: Icon(
                  sport.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: sport.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(
                    sport), // Appelle toggleLike pour mettre à jour l'état
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
