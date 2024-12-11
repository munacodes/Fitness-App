import 'package:flutter/material.dart';

class BodyMeasurements extends StatefulWidget {
  const BodyMeasurements({super.key});

  @override
  State<BodyMeasurements> createState() => _BodyMeasurementsState();
}

class _BodyMeasurementsState extends State<BodyMeasurements> {
  buildPopupMenuButtonWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'Delete',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'Connected apps',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'Find compatible apps',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'Help & feedback',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
        child: Icon(Icons.more_vert_outlined, size: 30),
      ),
    );
  }

  _buildCard({
    required String title,
    required String subtitle,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 20),
                ],
              ),
              SizedBox(height: 10),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Measurements'),
        actions: [
          Icon(Icons.add, size: 30),
          SizedBox(width: 10),
          buildPopupMenuButtonWidget(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NO RECENT DATA',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 20),
                _buildCard(
                  title: 'Weight',
                  subtitle: 'No recent data',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                _buildCard(
                  title: 'Body fat',
                  subtitle: 'No recent data',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                _buildCard(
                  title: 'Height',
                  subtitle: 'No recent data',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
