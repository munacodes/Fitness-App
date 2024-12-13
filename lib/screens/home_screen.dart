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
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.directions_walk_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    'Walk',
                    style: Theme.of(context).textTheme.bodyMedium,
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
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        iconTheme: IconThemeData(),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              foregroundColor: Colors.white,
              child: Text(
                'S',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  BuildYourDailyGoalsCard(),
                  SizedBox(height: 10),
                  BuildYourWeeklyTargetCard(),
                  SizedBox(height: 10),
                  Text(
                    'TRENDS',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 10),
                  BuildHeartPointsCard(),
                  SizedBox(height: 10),
                  BuildStepsCard(),
                  SizedBox(height: 10),
                  BuildEnergyExpended(),
                  SizedBox(height: 15),
                  Text(
                    'DISCOVER',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 15),
                  BuildASimpleWayToStayHealthyCard(),
                  SizedBox(height: 10),
                  BuildHowMuchSleepCard(),
                  SizedBox(height: 10),
                  BuildStayFitWithMeCard(),
                  SizedBox(height: 10),
                  BuildSetAPaceCard(),
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
