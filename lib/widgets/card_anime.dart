import 'package:flutter/material.dart';

import '../data/anime.dart';

class CardAnime extends StatelessWidget {
  final Anime anime;

  CardAnime({@required this.anime});

  @override
  Widget build(BuildContext context) {
    //tamaño de la pantalla
    final _screenSize = MediaQuery.of(context).size;

    var cardAnime =  Container(
      margin: EdgeInsets.only(top: 10.0),
        child: Row(
          
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(boxShadow: [
            
            BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
                offset: Offset(-8, 5),
                spreadRadius: -10)
          ]),
          margin: EdgeInsets.only(left: 10.0),
          padding: EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              fit: BoxFit.cover,
              width: _screenSize.width * 0.3,
              placeholder: AssetImage('assets/img/placeholder.png'),
              image: NetworkImage(anime.attributes.posterImage.small),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              anime.attributes.canonicalTitle,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.5
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Age : "+anime.attributes.ageRating,
              overflow: TextOverflow.fade,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Rating : "+anime.attributes.averageRating,
              overflow: TextOverflow.fade,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Status : "+anime.attributes.status,
              overflow: TextOverflow.fade,
            ),
          ],
        )),
      ],
    ));
  
    return Column(
      children: <Widget>[
        cardAnime,
        Divider()
      ],
    );
  }
}
