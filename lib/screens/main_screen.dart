import 'package:fitness_app/screens/export_screens.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  final Color activeColor = Colors.blue;

  final List<Widget> _pages = [
    const HomeScreen(),
    const JournalScreen(),
    const BrowseScreen(),
    const ProfileScreen(),
  ];

  Widget _buildNavIcon({
    required int index,
    required IconData activeIcon,
    required IconData inactiveIcon,
  }) {
    return IconButton(
      enableFeedback: false,
      onPressed: () {
        setState(() {
          _pageIndex = index;
        });
      },
      icon: Icon(
        _pageIndex == index ? activeIcon : inactiveIcon,
        color: _pageIndex == index ? activeColor : null,
        size: 35,
      ),
    );
  }

  Container buildMyCustomNavBar(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavIcon(
            index: 0,
            activeIcon: Icons.home,
            inactiveIcon: Icons.home_outlined,
          ),
          _buildNavIcon(
            index: 1,
            activeIcon: Icons.receipt,
            inactiveIcon: Icons.receipt_outlined,
          ),
          _buildNavIcon(
            index: 2,
            activeIcon: Icons.explore,
            inactiveIcon: Icons.explore_outlined,
          ),
          _buildNavIcon(
            index: 3,
            activeIcon: Icons.person,
            inactiveIcon: Icons.person_outline,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildMyCustomNavBar(context),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_pageIndex],
      ),
    );
  }
}
