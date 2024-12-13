import 'package:fitness_app/models/export_models.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UserProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  // Save user data to SharedPreferences
  Future<void> saveUser(UserModel user) async {
    _user = user;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user', jsonEncode(user.toMap()));
    notifyListeners();
  }

  // Load user data from SharedPreferences
  Future<void> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userData = prefs.getString('user');
    if (userData != null) {
      _user = UserModel.fromMap(jsonDecode(userData));
      notifyListeners();
    }
  }

  // Clear user data
  Future<void> clearUser() async {
    _user = null;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
    notifyListeners();
  }
}
