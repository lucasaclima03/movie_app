import 'package:flutter/material.dart';
import 'package:movie_info_app/components/genre_card.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'categories.dart';
import 'genres.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[CategoryList(), Genres(), MovieCarousel()],
    );
  }
}

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieCard(
            movie: movies[index],
          )
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({ Key? key, required this.movie }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movie.poster)
                )
              ),

            ) 
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding /2 ),
            child: Text(
              movie.title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
        
      ),
    );
  }
}