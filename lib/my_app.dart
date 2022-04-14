// ignore_for_file: dead_code, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigator_2/Models/anime_char_model.dart';
import 'package:navigator_2/Screens/anime_characters.dart';
import 'package:navigator_2/customRoute.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //AnimeCharModel? _selectedChar = AnimeCharModel('Escanor', '7 deadly sins');
  AnimeCharModel? _selectedChar;
  //bool unknown = false;

  List<AnimeCharModel> animeChars = [
    AnimeCharModel('Hashirama', 'Naruto'),
    AnimeCharModel('Madara', 'Naruto'),
    AnimeCharModel('Gojo', 'Jujutsu Kaisen'),
    AnimeCharModel('Zoro', 'One Piece')
  ];
  void onCharTapped(AnimeCharModel selectedChar) {
    setState(() {
      _selectedChar = selectedChar;
      //print(selectedChar.anime);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Characters',
      home: Navigator(
        // ignore: prefer_const_literals_to_create_immutables
        pages: [
          MaterialPage(
            key: ValueKey('anime_chars'),
            child: AnimeChars(
              animeChar: animeChars,
              onTapped: onCharTapped,
            ),
          ),
          if (_selectedChar != null) CustomRoute(character: _selectedChar)
        ],
        
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(
            () {
              _selectedChar = null;
            },
          );
          return true;
        },
      ),
    );
  }
}
