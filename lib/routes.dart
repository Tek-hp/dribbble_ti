import 'package:dribbble_ui/screens/dashboard/dashboard_view.dart';
import 'package:dribbble_ui/screens/get_started/get_started_view.dart';
import 'package:dribbble_ui/screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:dribbble_ui/constants/route_names.dart';

Map<String, Widget> routesAndViews(RouteSettings settings) => {
      FirstViewRoute: GetStartedView(),
      SecondViewRoute: HomeView(),
      DashBoardViewRoute: DashBoardView(),
    };
