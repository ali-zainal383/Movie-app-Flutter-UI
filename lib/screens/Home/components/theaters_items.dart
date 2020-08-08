import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/Theater.dart';

class TheatersItems extends StatelessWidget {
  final Theater theaters;
  const TheatersItems({Key key, this.theaters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          padding: EdgeInsets.only(left: defaultPadding / 2),
          child: Image.asset(theaters.image),
        ),
        Container(
          width: 130,
          padding: EdgeInsets.only(left: 10.5, top: 5.0),
          child: Text(
            theaters.title,
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
                padding: EdgeInsets.all(8),
                height: 29,
                width: 29,
                child: SvgPicture.asset("assets/icons/star.svg"),
              ),
              Container(
                child: Text(
                  theaters.rating.toString() + "/10",
                  style: TextStyle(
                    color: mainDarkLightTextColor,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
