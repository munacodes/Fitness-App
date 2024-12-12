import 'package:fitness_app/screens/profile_screen/profile_screen-sections/export_profile_card.dart';
import 'package:fitness_app/utils/export_utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.edit_outlined, size: 25),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SettingScreenProfilePage();
                  },
                ),
              );
            },
            child: Icon(Icons.settings_outlined, size: 25),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                BuildProfilePicSection(),
                BuildYourCurrentGoalProfileSection(),
                SizedBox(height: 10),
                BuildYourStepsProfileSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
