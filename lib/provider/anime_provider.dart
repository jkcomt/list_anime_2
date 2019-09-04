import 'dart:convert' as convert;
import 'package:flutter_anime_list/data/anime.dart';
import 'package:http/http.dart' as http;

class AnimeProvider {

  int limit = 30;

  Future<List<Anime>> getAnime() async {
    
    final uri = Uri.https("kitsu.io", "/api/edge/trending/anime",{"limit" : limit.toString()});
    
    List<Anime>animeList;
    
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      final list = jsonResponse['data'] as List;
      animeList = AnimeList.fromJson(list).animelist;
    } else {
    
       animeList = List();
    }

    return animeList;
    
    
  }
}
