import 'dart:async';

enum NavbarItems { HOME, MOVIE, TV }

class BottomNavbarBloc {
  final StreamController<NavbarItems> _navBarController =
      StreamController<NavbarItems>.broadcast();

  NavbarItems defaultItems = NavbarItems.HOME;

  Stream<NavbarItems> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavbarItems.HOME);
        break;
      case 1:
        _navBarController.sink.add(NavbarItems.MOVIE);
        break;
      case 2:
        _navBarController.sink.add(NavbarItems.TV);
        break;
      default:
    }
  }

  close() {
    _navBarController.close();
  }
}
