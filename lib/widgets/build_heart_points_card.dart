import 'package:flutter/material.dart';

class BuildHeartPointsCard extends StatefulWidget {
  const BuildHeartPointsCard({super.key});

  @override
  State<BuildHeartPointsCard> createState() => _BuildHeartPointsCardState();
}

class _BuildHeartPointsCardState extends State<BuildHeartPointsCard> {
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
                    'Heart Points',
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
                      Text(
                        '0 pts',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Today',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.yellow,
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
