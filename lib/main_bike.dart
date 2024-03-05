import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:sample_flavor_test/splash_screen.dart';
import 'package:sample_flavor_test/utils/bike_utils.dart';

void main() {
  FlavorConfig(name: "Bike", variables: bikeFlavorConfig);
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
