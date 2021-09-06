import 'package:architecture/architecture.dart';
import 'package:dribbble_ui/screens/cards/card_viewmodel.dart';
import 'package:dribbble_ui/screens/dashboard/dashboard_viewmodel.dart';
import 'package:dribbble_ui/screens/get_started/get_started_viewmodel.dart';
import 'package:dribbble_ui/screens/home/home_viewmodel.dart';

Future<void> setUpInjector() async {
  //Locate services
  locator
      .registerLazySingleton<NavigationService>(() => NavigationServiceImpl());

  //Locate models
  locator.registerFactory(() => CardViewModel());
  locator.registerFactory(() => HomeViewModel());
  locator.registerFactory(() => DashboardViewModel());
  locator.registerFactory(() => GetStartedViewModel());
}
