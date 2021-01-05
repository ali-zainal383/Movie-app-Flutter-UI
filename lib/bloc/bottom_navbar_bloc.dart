import 'dart:async';

enum NavbarItems { MOVIE, TV }

class BottomNavbarBloc {
  final StreamController<NavbarItems> _navBarController =
      StreamController<NavbarItems>.broadcast();

  NavbarItems defaultItems = NavbarItems.MOVIE;

  Stream<NavbarItems> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavbarItems.MOVIE);
        break;
      case 1:
        _navBarController.sink.add(NavbarItems.TV);
        break;
      // case 2:
      //   _navBarController.sink.add(NavbarItems.TV);
      //   break;
      default:
    }
  }

  close() {
    _navBarController.close();
  }
}
