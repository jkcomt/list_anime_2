import 'package:flutter/material.dart';
import 'package:flutter_anime_list/widgets/card_anime.dart';

import '../data/anime.dart';

class ListItemAnime extends StatelessWidget {

  final Anime anime;

  ListItemAnime({this.anime});

  @override
  Widget build(BuildContext context) {

      return CardAnime(anime: anime,);
    }
}

