import 'package:flutter/material.dart';
import 'package:navigator_2/Models/anime_char_model.dart';

class AnimeChars extends StatelessWidget {
  final List<AnimeCharModel> animeChar;
   final ValueChanged<AnimeCharModel> onTapped;

   AnimeChars({
    required this.animeChar,
    required this.onTapped
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Characters')),
      body: ListView(
        children: [
          for(var char in animeChar)
            ListTile(
              title: Text(char.name),
              onTap: () => onTapped(char),
            )
        ],
      ) ,
    );
  }
}
