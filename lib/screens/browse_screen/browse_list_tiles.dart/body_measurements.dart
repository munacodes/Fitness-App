import 'package:fitness_app/widgets/export_widgets.dart';
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
                BuildListTileCard(
                  title: 'Weight',
                  subtitle: 'No recent data',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                BuildListTileCard(
                  title: 'Body fat',
                  subtitle: 'No recent data',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                BuildListTileCard(
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
