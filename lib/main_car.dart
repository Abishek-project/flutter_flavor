import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:sample_flavor_test/splash_screen.dart';
import 'package:sample_flavor_test/utils/car_utils.dart';

void main() {
  FlavorConfig(name: "Car", variables: carFlavorConfig);
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
