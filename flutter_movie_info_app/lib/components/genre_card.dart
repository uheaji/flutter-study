import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  const GenreCard({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
