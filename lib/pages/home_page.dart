import 'package:flutter/material.dart';

import 'package:flutter_anime_list/provider/anime_provider.dart';

class MyAnimeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: animeList(),
      ),
    );
  }

  Widget animeList() {


    AnimeProvider().getAnime();

    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Item 1"),
        ),
        ListTile(
          title: Text("Item 1"),
        ),
        ListTile(
          title: Text("Item 1"),
        )
      ],
    );
  }

  


}


