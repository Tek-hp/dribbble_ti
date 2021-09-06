import 'package:dribbble_ui/di.dart';
import 'package:dribbble_ui/routes.dart';
import 'package:dribbble_ui/screens/get_started/get_started_view.dart';
import 'package:flutter/material.dart';
import 'package:architecture/architecture.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpInjector();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: (settings) => generateRoute(
        settings,
        routesAndViews(settings),
      ),
      home: GetStartedView(),
    );
  }
}
