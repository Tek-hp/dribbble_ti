import 'package:dribbble_ui/constants/color.dart';
import 'package:dribbble_ui/screens/dashboard/dashboard_viewmodel.dart';
import 'package:flutter/material.dart';

class DashboardBNB extends StatelessWidget {
  final DashboardViewModel model;

  DashboardBNB(
    this.model,
  );
  final List<String> bnbContents = [
    "Home",
    "Card",
    "Menu",
    "Location",
    "Profile",
  ];

  Widget _activeBNBItem(int index) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            bnbContents[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: darkBlue,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: model.selectedIndex,
      onTap: model.updateActivePage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: darkBlue,
          ),
          activeIcon: _activeBNBItem(0),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.pages_rounded,
              color: darkBlue,
            ),
            activeIcon: _activeBNBItem(1),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_on_rounded,
              color: darkBlue,
            ),
            activeIcon: _activeBNBItem(2),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: darkBlue,
            ),
            activeIcon: _activeBNBItem(3),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
              color: darkBlue,
            ),
            activeIcon: _activeBNBItem(4),
            label: ""),
      ],
    );
  }
}
