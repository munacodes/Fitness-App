import 'package:fitness_app/screens/browse_screen/browse_list_tiles.dart/export_browse_list_tiles.dart';
import 'package:fitness_app/utils/export_utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  _buildListTile({
    required IconData icon,
    required String title,
    required Color backgroundColor,
    required Color foregroundColor,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            child: Icon(icon, size: 40),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search_sharp, size: 30),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Search health data',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        child: Text(
                          'S',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                _buildListTile(
                  title: 'Activity',
                  icon: Icons.wc_rounded,
                  backgroundColor: Colors.green.withOpacity(0.3),
                  foregroundColor: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Activity();
                        },
                      ),
                    );
                    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                      message: 'You clicked on activity',
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
                SizedBox(height: 20),
                _buildListTile(
                  title: 'Body Measurement',
                  icon: Icons.keyboard_alt_outlined,
                  backgroundColor: Colors.blue.withOpacity(0.3),
                  foregroundColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BodyMeasurements();
                        },
                      ),
                    );
                    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                      message: 'You clicked on Body Measurement',
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
                SizedBox(height: 20),
                _buildListTile(
                  title: 'Vitals',
                  icon: Icons.multitrack_audio_sharp,
                  backgroundColor: Colors.red.withOpacity(0.3),
                  foregroundColor: Colors.red,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Vitals();
                        },
                      ),
                    );

                    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                      message: 'You clicked on Vitals',
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
                SizedBox(height: 20),
                _buildListTile(
                  title: 'Nutrition',
                  icon: Icons.fastfood_outlined,
                  backgroundColor: Colors.yellow.withOpacity(0.3),
                  foregroundColor: Colors.yellow,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Nutrition();
                        },
                      ),
                    );
                    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                      message: 'You clicked on Nutrition',
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
                SizedBox(height: 20),
                _buildListTile(
                  title: 'Sleep',
                  icon: Icons.notifications_paused,
                  backgroundColor: Colors.purple.withOpacity(0.3),
                  foregroundColor: Colors.purple,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Sleep();
                        },
                      ),
                    );
                    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                      message: 'You clicked on Sleep',
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
                SizedBox(height: 20),
                _buildListTile(
                  title: 'Cycle Tracking',
                  icon: Icons.water,
                  backgroundColor: Colors.pink.withOpacity(0.3),
                  foregroundColor: Colors.pink,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CycleTracking();
                        },
                      ),
                    );
                    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                      message: 'You clicked on Cycle Tracking',
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
