import 'package:fitness_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
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
        title: Text('Sleep'),
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
                  'DISCOVER',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 20),
                GetMoreAdsCard(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                  child: Text(
                    'NO RECENT DATA',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                _buildCard(
                  title: 'Sleep duration',
                  subtitle: 'No recent data',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                _buildCard(
                  title: 'Bedtime schedule',
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
