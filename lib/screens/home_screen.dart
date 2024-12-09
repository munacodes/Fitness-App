import 'package:fitness_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  wcvw() {
    return Container(
      child: CircleAvatar(),
    );
  }

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

  _buildDailyTarget() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your daily goals',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Text(
                'Last 7 days',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '0/7',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Achieved',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 80,
                    width: 250,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildMiniDailyGoals(
                          title: 'S',
                        ),
                        _buildMiniDailyGoals(
                          title: 'M',
                        ),
                        _buildMiniDailyGoals(
                          title: 'T',
                        ),
                        _buildMiniDailyGoals(
                          title: 'W',
                        ),
                        _buildMiniDailyGoals(
                          title: 'T',
                        ),
                        _buildMiniDailyGoals(
                          title: 'F',
                        ),
                        _buildMiniDailyGoals(
                          title: 'S',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildMiniDailyGoals({
    required String? title,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 15,
        ),
        Text(
          title!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }

  _buildWeeklyTarget() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your weekly target',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Text(
                'Dec 8 - 14',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Row(
                children: [
                  _buildCalculateHeartPoint(number: 30),
                  Spacer(),
                  Container(
                    width: 200,
                    height: 20,
                    child: LinearProgressIndicator(
                      value: 1,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCalculateHeartPoint({
    required int number,
  }) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$number',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(width: 8),
          Text('of'),
          SizedBox(width: 8),
          Text(
            '150',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
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
                  BuildHomeCards(
                    title: 'Your Daily Goals',
                    subtitle: '',
                    text1: '',
                    text2: '',
                    onTap: () {},
                    container: Text(''),
                  ),
                  _buildDailyTarget(),
                  _buildWeeklyTarget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
