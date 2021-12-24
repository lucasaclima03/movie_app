import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';

import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'cast_card.dart';
import 'genres.dart';
import 'title_duration.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),        
        TitleDuration(movie: movie),
        Genres(movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text("Plot Summary",
              style: Theme.of(context).textTheme.headline6),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot,
            style: TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
        CastAndCrew(
          casts: movie.cast,
        ),
      ],
    );
  }
}

