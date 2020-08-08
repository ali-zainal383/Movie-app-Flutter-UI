import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constant.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mainDarkColor,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      title: Text("Movie App"),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
