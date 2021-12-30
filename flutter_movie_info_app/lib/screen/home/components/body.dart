import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/components/genre_card.dart';
import 'package:flutter_movie_info_app/constants.dart';
import 'package:flutter_movie_info_app/models/movie.dart';
import 'package:flutter_movie_info_app/screen/home/components/genre.dart';
import 'package:flutter_movie_info_app/screen/home/components/movie_card.dart';
import 'package:flutter_movie_info_app/screen/home/components/movie_carousel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding * 2),
          MovieCarousel(),
        ],
      ),
    );
  }
}
