import 'package:flutter_anime_list/data/anime.dart';
import 'package:flutter_anime_list/provider/anime_provider.dart';
import 'package:flutter_anime_list/widgets/list_item.dart';

import 'package:flutter/material.dart';

class MyAnimeHome extends StatelessWidget {
  final animeProvider = new AnimeProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Anime List"),
      ),
      body: Container(
        child: animeList(),
      ),
    );
  }

  Widget animeList() {
    return FutureBuilder(
      future: animeProvider.getAnime(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _listaAnime(snapshot.data, context),
          );
        } else {
          return Container(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }

  List<Widget> _listaAnime(List<Anime> animes, BuildContext context) {
    return animes.map((anime) {
      return ListItemAnime(
        anime: anime,
      );
    }).toList();
  }
}
