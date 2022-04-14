// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:navigator_2/Models/anime_char_model.dart';

class CharacterDetails extends StatelessWidget {
  final AnimeCharModel? selectedCharacter;

  CharacterDetails({@required this.selectedCharacter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: buildCharacterDetails(context,selectedCharacter),
    );
  }
}

Widget buildCharacterDetails(BuildContext context,AnimeCharModel? selectedCharacter) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (selectedCharacter != null)
          Text(
            selectedCharacter.anime,
            style: Theme.of(context).textTheme.headlineMedium,
          )
      ],
    ),
  );
}
