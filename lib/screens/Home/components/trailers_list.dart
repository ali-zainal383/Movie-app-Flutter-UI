import 'package:flutter/material.dart';
import 'package:movie_app/models/Trailer.dart';
import 'package:movie_app/screens/Home/components/trailers_item.dart';

import '../../../constant.dart';

class TrailersList extends StatelessWidget {
  const TrailersList({Key key, @required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 230,
      padding: EdgeInsets.only(left: defaultPadding / 2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trailers.length,
        itemBuilder: (context, index) => TrailerItems(
          trailers: trailers[index],
        ),
      ),
    );
  }
}
