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
        title: const Text("Sports traditionnels"),
      ),
      body: ListView(
        children: sports.map((sport) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 本地图片
                Image.asset(
                  sport.imageUrl,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                //  运动详情
                ListTile(
                  title: Text(sport.title),
                  subtitle: Text(sport.description),
                  trailing: IconButton(
                    icon: Icon(
                      sport.isLiked ? Icons.favorite : Icons.favorite_border,
                      color: sport.isLiked ? Colors.red : null,
                    ),
                    onPressed: () => toggleLike(sport),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
