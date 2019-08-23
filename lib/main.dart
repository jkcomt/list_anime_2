import 'package:flutter_anime_list/pages/home_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyAnimeApp());

class MyAnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAnimeHome(),
    );
  }
}