

import 'package:flutter/material.dart';
import 'package:navigator_2/Models/anime_char_model.dart';
import 'package:navigator_2/Screens/character_details.dart';

class CustomRoute extends Page {
  final AnimeCharModel? character;

  CustomRoute({
    this.character,
  }) : super(key: ValueKey(character));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return CharacterDetails(selectedCharacter: character);
      },
    );
  }



}