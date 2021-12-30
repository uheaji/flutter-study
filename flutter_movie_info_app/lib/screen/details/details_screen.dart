import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/models/movie.dart';
import 'package:flutter_movie_info_app/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
