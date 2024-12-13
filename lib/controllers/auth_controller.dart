import 'package:fitness_app/screens/export_screens.dart';
import 'package:fitness_app/utils/export_utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(); // Declare GoogleSignIn as a field for reuse.

  Future<void> googleSignIn(BuildContext context) async {
    try {
      final user = await _googleSignIn.signIn(); // Attempt to sign in the user.

      if (user == null) {
        ShowFlutterToastOrSnackBar().showFlutterToastMessage(
          message: 'Sign-in was canceled. Please try again.',
          gravity: ToastGravity.BOTTOM,
        );
      } else if (user.displayName == null || user.email == null) {
        ShowFlutterToastOrSnackBar().showFlutterToastMessage(
          message: 'Incomplete user information received.',
          gravity: ToastGravity.BOTTOM,
        );
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
        ShowFlutterToastOrSnackBar().showFlutterToastMessage(
          message: 'Welcome, ${user.displayName}!',
          gravity: ToastGravity.BOTTOM,
        );
      }
    } catch (e) {
      // Handle errors during the sign-in process.
      ShowFlutterToastOrSnackBar().showFlutterErrorToastMessage(
        message: 'An error occurred during sign-in: $e',
        gravity: ToastGravity.BOTTOM,
      );
      print('Sign-in error: $e');
    }
  }
}
