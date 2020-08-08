import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/Trailer.dart';

class TrailerItems extends StatelessWidget {
  final Trailer trailers;
  const TrailerItems({Key key, this.trailers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 290,
          height: 160,
          padding: EdgeInsets.only(left: defaultPadding / 2),
          child: Image.asset(
            trailers.image,
          ),
        ),
        Container(
          width: 290,
          padding: EdgeInsets.only(left: defaultPadding / 2, top: 5),
          child: Text(
            trailers.title,
            style: TextStyle(
              color: mainTextColor,
              fontSize: 15,
            ),
          ),
        ),
        Container(
          width: 290,
          padding: EdgeInsets.only(left: defaultPadding / 2, top: 5),
          child: Text(
            trailers.genre,
            style: TextStyle(
              color: mainDarkTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
