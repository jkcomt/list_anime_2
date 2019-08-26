import 'dart:convert' as convert;
import 'package:flutter_anime_list/data/anime.dart';
import 'package:http/http.dart' as http;

class AnimeProvider {
  Future<List<Anime>> getAnime() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    final uri = Uri.https("kitsu.io", "/api/edge/trending/anime",{"limit" : "20"});
    //var url = "https://kitsu.io/api/edge/trending/anime";
    List<Anime>animeList;
    // Await the http get response, then decode the json-formatted responce.
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      final list = jsonResponse['data'] as List;
      animeList = AnimeList.fromJson(list).animelist;
    } else {
       //print("Request failed with status: ${response.statusCode}.");
       animeList = List();
    }

    return animeList;
    
    
  }
}
