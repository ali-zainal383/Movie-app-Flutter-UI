import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/ComingSoon.dart';

import 'coming_soon_item.dart';

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key key, @required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 250,
      padding: EdgeInsets.only(left: defaultPadding / 2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: comingSoons.length,
        itemBuilder: (context, index) => ComingSoonItem(
          comingSoon: comingSoons[index],
        ),
      ),
    );
  }
}
