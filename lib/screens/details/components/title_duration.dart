import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';

import '../../../constants.dart';

class TitleDuration extends StatelessWidget {
  const TitleDuration({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(movie.title, style: Theme.of(context).textTheme.headline5),
              SizedBox(height: kDefaultPadding/2,),
              Row(
                children: <Widget>[
                  Text(
                    "${movie.year}",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  SizedBox(width: kDefaultPadding,),
                  Text(
                    "PG-13",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  SizedBox(width: kDefaultPadding,),
                  Text(
                    "2h 32min",
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              ),

            ],
          ),
        ),
        SizedBox(
          height: 54,
          width: 64,
          child: TextButton(
            onPressed: (){},
            
            child: Icon(Icons.add, size: 50, ),
          ),
        ),
      ],),
      );
  }
}