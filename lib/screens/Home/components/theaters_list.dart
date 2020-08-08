import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/Theater.dart';

import 'theaters_items.dart';

class TheatersList extends StatelessWidget {
  const TheatersList({Key key, @required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 243,
      padding: EdgeInsets.only(left: defaultPadding / 2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: theaters.length,
        itemBuilder: (context, index) => TheatersItems(
          theaters: theaters[index],
        ),
      ),
    );
  }
}
