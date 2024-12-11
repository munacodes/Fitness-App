import 'package:flutter/material.dart';

class BuildYourDailyGoalsCard extends StatefulWidget {
  const BuildYourDailyGoalsCard({
    super.key,
  });

  @override
  State<BuildYourDailyGoalsCard> createState() =>
      _BuildYourDailyGoalsCardState();
}

class _BuildYourDailyGoalsCardState extends State<BuildYourDailyGoalsCard> {
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

  @override
  Widget build(BuildContext context) {
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
                  Icon(Icons.arrow_forward_ios, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Last 7 days',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '0',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '/',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '7',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      Text(
                        'Achieved',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  _buildMiniDailyGoals(title: 'S'),
                  _buildMiniDailyGoals(title: 'M'),
                  _buildMiniDailyGoals(title: 'T'),
                  _buildMiniDailyGoals(title: 'W'),
                  _buildMiniDailyGoals(title: 'T'),
                  _buildMiniDailyGoals(title: 'F'),
                  _buildMiniDailyGoals(title: 'S'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
