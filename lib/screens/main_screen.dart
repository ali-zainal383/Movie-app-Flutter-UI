import 'package:flutter/material.dart';
import 'package:movie_app/bloc/bottom_navbar_bloc.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:movie_app/style/theme.dart' as Style;

import 'tabs/movie_screen.dart';
import 'tabs/tv_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BottomNavbarBloc _bottomNavbarBloc;
  @override
  void initState() {
    super.initState();
    _bottomNavbarBloc = BottomNavbarBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: StreamBuilder<NavbarItems>(
          stream: _bottomNavbarBloc.itemStream,
          initialData: _bottomNavbarBloc.defaultItems,
          //ignore: missing_return
          builder: (BuildContext context, AsyncSnapshot<NavbarItems> snapshot) {
            switch (snapshot.data) {
              // case NavbarItems.HOME:
              //   return HomeScreen();
              case NavbarItems.MOVIE:
                return MovieScreen();
              case NavbarItems.TV:
                return TvScreen();
              default:
            }
          },
        ),
      ),
      bottomNavigationBar: StreamBuilder(
        stream: _bottomNavbarBloc.itemStream,
        initialData: _bottomNavbarBloc.defaultItems,
        builder: (BuildContext context, AsyncSnapshot<NavbarItems> snapshot) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  spreadRadius: 0,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.grey[100],
                iconSize: 20.0,
                unselectedItemColor: Style.Colors.grey,
                unselectedFontSize: 9.5,
                selectedFontSize: 9.5,
                type: BottomNavigationBarType.fixed,
                fixedColor: Style.Colors.mainColor,
                currentIndex: snapshot.data.index,
                onTap: _bottomNavbarBloc.pickItem,
                items: [
                  // BottomNavigationBarItem(
                  //   title: Padding(
                  //     padding: EdgeInsets.only(top: 5.0),
                  //     child: Text("Home"),
                  //   ),
                  //   icon: Icon(EvaIcons.homeOutline),
                  //   activeIcon: Icon(EvaIcons.home),
                  // ),
                  BottomNavigationBarItem(
                    title: Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Movie"),
                    ),
                    icon: Icon(EvaIcons.filmOutline),
                    activeIcon: Icon(EvaIcons.film),
                  ),
                  BottomNavigationBarItem(
                    title: Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Tv"),
                    ),
                    icon: Icon(EvaIcons.tvOutline),
                    activeIcon: Icon(EvaIcons.tv),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Style.Colors.mainColor,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          EvaIcons.menu2Outline,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      title: Text(
        "Movie",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 10.0),
          icon: Icon(
            EvaIcons.searchOutline,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
