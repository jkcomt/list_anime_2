import 'package:flutter/material.dart';
import 'package:flutter_anime_list/widgets/card_anime.dart';

import '../data/anime.dart';

class ListItemAnime extends StatelessWidget {

  final Anime anime;

  ListItemAnime({this.anime});

  @override
  Widget build(BuildContext context) {

      return CardAnime(anime: anime,);
      // return ListTile(
      //   onTap: (){},
      //   leading: CircleAvatar(          
      //     backgroundImage: anime.attributes.coverImage.tiny != null ? 
      //     NetworkImage(anime.attributes.coverImage.tiny) : AssetImage('assets/img/placeholder.png') ),
      //   title: Text(anime.attributes.canonicalTitle),
      //   subtitle: anime.attributes.episodeCount != null ? Text("Episodes: "+anime.attributes.episodeCount.toString()) : null,
      //   //trailing: Icon(Icons.keyboard_arrow_right)
      // );
    }
}

