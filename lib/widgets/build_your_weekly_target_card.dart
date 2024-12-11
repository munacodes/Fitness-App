import 'package:flutter/material.dart';

class BuildYourWeeklyTargetCard extends StatefulWidget {
  const BuildYourWeeklyTargetCard({super.key});

  @override
  State<BuildYourWeeklyTargetCard> createState() =>
      _BuildYourWeeklyTargetCardState();
}

class _BuildYourWeeklyTargetCardState extends State<BuildYourWeeklyTargetCard> {
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
                  Icon(Icons.arrow_forward_ios, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Dec 8 - 14',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 180,
                      child: Text(
                        'Scoring 150 Heart Points a week can help you',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 60,
                  ),
                  Container(
                    width: 80,
                    child: Text(
                      'American Heart Association',
                      style: Theme.of(context).textTheme.titleSmall,
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
}
