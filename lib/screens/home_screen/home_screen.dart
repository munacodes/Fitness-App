import 'package:fitness_app/screens/home_screen/export_home_screens.dart';
import 'package:fitness_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildHeartAndStepsWidgets() {
    return Center(
      child: Container(
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.green,
                  ),
                  Text(
                    'Heart Pts',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.blue,
                  ),
                  Text(
                    'Steps',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCal({
    required String text,
    required int number,
  }) {
    return Column(
      children: [
        Text(
          '$number',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.error_outline_outlined),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade500,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildHeartAndStepsWidgets(),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildCal(
                            number: 123,
                            text: 'Cal',
                          ),
                          Column(
                            children: [
                              Text(
                                '0.0',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'mi',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          _buildCal(
                            number: 46,
                            text: 'Move Min',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  DailyWeeklySection(),
                  SizedBox(height: 10),
                  Text(
                    'TRENDS',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 10),
                  TrendsSection(),
                  SizedBox(height: 10),
                  Text(
                    'DISCOVER',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 10),
                  DiscoverSection(),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
