import 'package:flutter/material.dart';
import '../data/series_data.dart';
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
        title: const Text("Séries Chinoises"),
      ),
      body: ListView.builder(
        itemCount: series.length,
        itemBuilder: (context, index) {
          final serie = series[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Image.asset(
                serie.imageUrl, // 本地图片路径
                width: 300, // 增大图片尺寸
                height: 300,
                fit: BoxFit.cover,
              ),
              title: Text(serie.title),
              subtitle: Text(serie.description),
              trailing: IconButton(
                icon: Icon(
                  serie.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: serie.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(serie),
              ),
            ),
          );
        },
      ),
    );
  }
}
