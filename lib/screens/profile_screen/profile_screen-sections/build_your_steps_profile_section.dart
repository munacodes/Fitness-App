import 'package:flutter/material.dart';

class BuildYourStepsProfileSection extends StatefulWidget {
  const BuildYourStepsProfileSection({super.key});

  @override
  State<BuildYourStepsProfileSection> createState() =>
      _BuildYourStepsProfileSectionState();
}

class _BuildYourStepsProfileSectionState
    extends State<BuildYourStepsProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            padding: EdgeInsets.all(10),
            child: ProfileTabBarSection(),
          ),
        ],
      ),
    );
  }
}

class ProfileTabBarSection extends StatelessWidget {
  const ProfileTabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text('Your Steps'),
        ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                labelStyle: Theme.of(context).textTheme.titleMedium,
                unselectedLabelStyle: Theme.of(context).textTheme.titleSmall,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: 'Day'),
                  Tab(text: 'Week'),
                  Tab(text: 'Month'),
                  Tab(text: 'Year'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Daily Details')),
                  Center(child: Text('Weekly Details')),
                  Center(child: Text('Monthly Details')),
                  Center(child: Text('Yearly Details')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
