import 'package:fitness_app/screens/export_screens.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainAuthController extends StatefulWidget {
  const MainAuthController({super.key});

  @override
  State<MainAuthController> createState() => _MainAuthControllerState();
}

class _MainAuthControllerState extends State<MainAuthController> {
  bool? isRegistered; // To hold the registration status

  @override
  void initState() {
    super.initState();
    _checkRegistrationStatus();
  }

  Future<void> _checkRegistrationStatus() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? registered = prefs.getBool('isRegistered');
      setState(() {
        isRegistered = registered ?? false; // Default to false if null
      });

      // Navigate based on the registration status
      if (registered == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SplashScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        );
      }
    } catch (e) {
      // Handle errors (e.g., logging)
      print("Error checking registration status: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Show loader while checking
      ),
    );
  }
}
