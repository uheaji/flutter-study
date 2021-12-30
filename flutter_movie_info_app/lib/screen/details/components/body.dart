import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/constants.dart';
import 'package:flutter_movie_info_app/models/movie.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.4 - 50,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movie.backdrop),
                  ),
                ),
              ),
              // Rating Box
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: size.width * 0.9,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: Color(0xFF12153D).withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('icons/star_fill.svg'),
                          SizedBox(height: kDefaultPadding / 4),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: '${movie.rating}/',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(text: '10\n'),
                                TextSpan(
                                  text: '150,212',
                                  style: TextStyle(color: kTextLightColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Rate this
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('icons/star.svg'),
                          SizedBox(height: kDefaultPadding / 4),
                          Text('Rate this',
                              style: Theme.of(context).textTheme.bodyText2),
                        ],
                      ),
                      // Metascore
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
