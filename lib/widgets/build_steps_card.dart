import 'package:flutter/material.dart';

class BuildStepsCard extends StatefulWidget {
  const BuildStepsCard({super.key});

  @override
  State<BuildStepsCard> createState() => _BuildStepsCardState();
}

class _BuildStepsCardState extends State<BuildStepsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Steps',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(Icons.arrow_forward_ios, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Last 7 days',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '303',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'Today',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.brown,
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
