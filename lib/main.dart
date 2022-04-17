import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/screens/detail/plant_detail_screen.dart';
import 'package:challenge_ui_plant_app/screens/grid/plant_grid_screen.dart';
import 'package:challenge_ui_plant_app/screens/home/plant_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(splashTimer);
  runApp(const PlantApp());
}

Future splashTimer(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 1));
}

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      routes: {
        '/all': (context) => const PlantGridScreen(),
        '/favorites': (context) => const PlantGridScreen(),
        '/detail': (context) => const PlantDetailScreen(),
        '/home': (context) => const PlantHomeScreen(),
      },
      initialRoute: '/home',
    );
  }
}
