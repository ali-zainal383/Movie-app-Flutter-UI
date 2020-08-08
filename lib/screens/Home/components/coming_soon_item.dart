import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/ComingSoon.dart';

class ComingSoonItem extends StatelessWidget {
  final ComingSoon comingSoon;
  const ComingSoonItem({Key key, this.comingSoon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          padding: EdgeInsets.only(left: defaultPadding / 2),
          child: Image.asset(comingSoon.image),
        ),
        Container(
          width: 130,
          height: 30,
          padding: EdgeInsets.only(
              left: defaultPadding / 2, top: defaultPadding / 4),
          child: Text(
            comingSoon.title,
            style: TextStyle(
              color: mainTextColor,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: 130,
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                width: 29,
                height: 29,
                child: SvgPicture.asset("assets/icons/star.svg"),
              ),
              Container(
                child: Text(
                  comingSoon.rating.toString() + "/10",
                  style: TextStyle(
                    color: mainDarkLightTextColor,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
