import 'package:fitness_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreenProfilePage extends StatefulWidget {
  const SettingScreenProfilePage({super.key});

  @override
  State<SettingScreenProfilePage> createState() =>
      _SettingScreenProfilePageState();
}

class _SettingScreenProfilePageState extends State<SettingScreenProfilePage> {
  Widget _buildSettingCard({
    IconData? icon,
    required String text,
    void Function()? onTap,
    Widget? trailing,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Icon(icon, size: 30),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSettingCard(
              icon: Icons.dark_mode_outlined,
              text: 'Dark Mode',
              trailing: Switch.adaptive(
                activeColor: Colors.blue,
                value: isDarkMode,
                onChanged: themeProvider.toggleTheme,
              ),
            ),
            // Switch(
            //   value: isDarkMode,
            //   onChanged: (value) {
            //     themeProvider.toggleTheme(value);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
