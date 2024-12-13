import 'package:fitness_app/controllers/export_auth_controller.dart';
import 'package:fitness_app/provider/export_providers.dart';
import 'package:fitness_app/screens/export_screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLoading = false;
  bool? isRegistered; // To hold the registration status

  Future<void> _handleGoogleSignIn(BuildContext context) async {
    setState(() => isLoading = true);
    try {
      await AuthController().googleSignIn(context);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign-in failed: $e')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: userProvider.user != null
                ? SplashScreen()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login with your account to continue.',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () => _handleGoogleSignIn(context),
                        child: isLoading
                            ? const CircularProgressIndicator()
                            : const Text('Register with Google'),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
