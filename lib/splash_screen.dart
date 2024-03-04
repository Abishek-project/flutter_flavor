import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:sample_flavor_test/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), navigateToNextScreen);
  }

  void navigateToNextScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                FlavorConfig.instance.variables["icons"]["splashIcon"],
              ),
            ), // ReImage.asset(FlavorConfig.instance.variables["splashIcon"],place 'assets/logo.png' with your logo path
            const SizedBox(height: 20),
            Text(
              FlavorConfig.instance.variables["texts"]["splashText"],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const CircularProgressIndicator(
              color: Colors.blue,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
