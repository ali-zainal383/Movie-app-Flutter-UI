import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/bloc/get_discover_tv_bloc.dart';
import 'package:movie_app/models/tv.dart';
import 'package:movie_app/models/tv_response.dart';
import 'package:movie_app/style/theme.dart' as Style;

class TvScreen extends StatefulWidget {
  @override
  _TvScreenState createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {
  @override
  void initState() {
    super.initState();
    discoverTvBloc..getDiscoverTv();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TvResponse>(
      stream: discoverTvBloc.subject.stream,
      builder: (context, AsyncSnapshot<TvResponse> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.error != null && snapshot.data.error.length > 0) {
            return _buildErrorWidget(snapshot.data.error);
          }
          return _buildDiscoversTvWidget(snapshot.data);
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Error occured $error"),
        ],
      ),
    );
  }

  Widget _buildDiscoversTvWidget(TvResponse data) {
    List<Tv> tvShows = data.tvShows;
    if (tvShows.length == 0) {
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "No Tv Shows List",
            ),
          ],
        ),
      );
    } else {
      return ListView.builder(
        padding: EdgeInsets.all(5.0),
        itemCount: tvShows.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Container(
              height: 140,
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                      image: DecorationImage(
                        image: tvShows[index].poster == null
                            ? Icon(
                                EvaIcons.filmOutline,
                                color: Colors.white24,
                                size: 50.0,
                              )
                            : NetworkImage(
                                "https://image.tmdb.org/t/p/w200/" +
                                    tvShows[index].poster,
                              ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 230,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tvShows[index].title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Style.Colors.titleColor,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 3),
                              child: Row(
                                children: [
                                  Text(
                                    tvShows[index].rating.toString(),
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  RatingBar(
                                    itemSize: 10.0,
                                    initialRating: tvShows[index].rating / 2,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      EvaIcons.star,
                                      color: Style.Colors.mainColor,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 3),
                            child: Container(
                              width: 220,
                              child: Text(
                                tvShows[index].overview,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                textAlign: TextAlign.justify,
                                style: TextStyle(height: 1.4, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
