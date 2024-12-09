import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowFlutterToastOrSnackBar {
  showFlutterToastMessage({
    required String message,
    required ToastGravity gravity,
  }) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      gravity: gravity, // ToastGravity.BOTTOM, Top or Center
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 1,
      fontSize: 16.0,
    );
  }

  showFlutterErrorToastMessage({
    required String message,
    required ToastGravity gravity,
  }) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      gravity: gravity, // ToastGravity.BOTTOM, Top or Center
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 1,
      fontSize: 16.0,
    );
  }

  showSnackBarMessage(context, String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue,
        content: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
