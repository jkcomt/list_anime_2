import 'package:flutter/material.dart';

import '../data/anime.dart';

class ListItemAnime extends StatelessWidget {

  final Anime anime;

  ListItemAnime({this.anime});

  @override
  Widget build(BuildContext context) {
      return ListTile(
        onTap: (){},
        leading: CircleAvatar(          
          backgroundImage: anime.attributes.coverImage.tiny != null ? NetworkImage(anime.attributes.coverImage.tiny) : AssetImage('assets/img/placeholder.png')        ),
        title: Text(anime.attributes.canonicalTitle),
        subtitle: Text("Episodes: "+anime.attributes.episodeLength.toString()),
        //trailing: Icon(Icons.keyboard_arrow_right)
      );
    }
}

