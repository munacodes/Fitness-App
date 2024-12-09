import 'package:fitness_app/screens/export_screens.dart';
import 'package:fitness_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Welcome to \n Fitness App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width *
                          0.1, // Adjust font size based on screen width
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor, // Use theme color
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Customer Button
              BuildElevatedButton(
                context: context,
                label: 'Continue',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
