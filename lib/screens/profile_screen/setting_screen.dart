import 'package:flutter/material.dart';

class SettingScreenProfilePage extends StatefulWidget {
  const SettingScreenProfilePage({super.key});

  @override
  State<SettingScreenProfilePage> createState() =>
      _SettingScreenProfilePageState();
}

class _SettingScreenProfilePageState extends State<SettingScreenProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
