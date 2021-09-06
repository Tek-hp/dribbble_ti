import 'package:architecture/architecture.dart';
import 'package:dribbble_ui/screens/cards/card_view.dart';
import 'package:dribbble_ui/screens/home/home_view.dart';
import 'package:flutter/cupertino.dart';

class DashboardViewModel extends BaseViewModel {
  PageController viewPageController = PageController(initialPage: 0);
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  updateActivePage(int item) {
    _selectedIndex = item;
    viewPageController.jumpToPage(
      _selectedIndex,
    );
    setIdle();
  }

  onPageSlideChange(int page) {
    _selectedIndex = page;
    setIdle();
  }

  List<Widget> views = [
    HomeView(),
    CardView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];
}
