import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/bloc/get_upcoming_movies.bloc.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/movie_response.dart';
import 'package:movie_app/style/theme.dart' as Style;

class UpComingMovies extends StatefulWidget {
  @override
  _UpComingMoviesState createState() => _UpComingMoviesState();
}

class _UpComingMoviesState extends State<UpComingMovies> {
  @override
  void initState() {
    super.initState();
    upcomingMoviesBloc..getUpComing();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MovieResponse>(
      stream: upcomingMoviesBloc.subject.stream,
      builder: (context, AsyncSnapshot<MovieResponse> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.error != null && snapshot.data.error.length > 0) {
            return _buildErrorWidget(snapshot.data.error);
          }
          return _buildLatestMoviesWidget(snapshot.data);
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 25.0,
            height: 25.0,
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Colors.orangeAccent[100]),
              strokeWidth: 4.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Error occured $error"),
        ],
      ),
    );
  }

  Widget _buildLatestMoviesWidget(MovieResponse data) {
    List<Movie> movies = data.movies;
    if (movies.length == 0) {
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "No Latest Movies List",
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: 250.0,
        padding: EdgeInsets.only(left: 10.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.0, right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    movies[index].poster == null
                        ? Container(
                            width: 120.0,
                            height: 180.0,
                            decoration: BoxDecoration(
                              color: Style.Colors.secondColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(2.0),
                              ),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  EvaIcons.filmOutline,
                                  color: Colors.white24,
                                  size: 50.0,
                                ),
                              ],
                            ),
                          )
                        : Container(
                            width: 120.0,
                            height: 180.0,
                            decoration: BoxDecoration(
                              color: Style.Colors.secondColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(2.0),
                              ),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w200/" +
                                        movies[index].poster),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 100.0,
                      child: Text(
                        movies[index].title,
                        maxLines: 2,
                        style: TextStyle(
                          height: 1.4,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          movies[index].rating.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        RatingBar(
                          itemSize: 8.0,
                          initialRating: movies[index].rating / 2,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            EvaIcons.star,
                            color: Style.Colors.mainColor,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
  }
}
