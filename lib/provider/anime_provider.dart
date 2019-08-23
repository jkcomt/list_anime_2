import 'dart:convert' as convert;
import 'package:flutter_anime_list/data/anime.dart';
import 'package:http/http.dart' as http;

class AnimeProvider {
  void getAnime() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = "https://kitsu.io/api/edge/trending/anime";

    // Await the http get response, then decode the json-formatted responce.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var list = jsonResponse['data'] as List;
      var animeList = AnimeList.fromJson(list);
      
      print(animeList);
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
  }
}
