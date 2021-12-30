import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/components/genre_card.dart';
import 'package:flutter_movie_info_app/constants.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation'
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 6),
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(genre: genres[index]),
      ),
    );
  }
}
