import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

import 'categori_list.dart';
import 'coming_soon_list.dart';
import 'theaters_list.dart';
import 'trailers_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CategoryList(),
            SizedBox(height: defaultPadding / 4),
            TheatersList(size: size),
            SizedBox(height: defaultPadding / 4),
            Padding(
              padding: const EdgeInsets.only(
                  left: defaultPadding, right: defaultPadding / 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "NEW TRAILER",
                    style: TextStyle(
                      color: mainTextColor,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "VIEW ALL",
                    style: TextStyle(
                      color: mainDarkLightTextColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: defaultPadding / 2),
            TrailersList(size: size),
            Padding(
              padding: const EdgeInsets.only(
                  left: defaultPadding, right: defaultPadding / 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "COMING SOON",
                    style: TextStyle(
                      color: mainTextColor,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "VIEW ALL",
                    style: TextStyle(
                      color: mainDarkLightTextColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: defaultPadding / 2),
            ComingSoonList(size: size),
          ],
        ),
      ),
    );
  }
}
