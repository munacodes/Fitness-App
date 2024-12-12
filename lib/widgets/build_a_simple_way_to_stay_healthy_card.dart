import 'package:flutter/material.dart';

class BuildASimpleWayToStayHealthyCard extends StatefulWidget {
  const BuildASimpleWayToStayHealthyCard({super.key});

  @override
  State<BuildASimpleWayToStayHealthyCard> createState() =>
      _BuildASimpleWayToStayHealthyCardState();
}

class _BuildASimpleWayToStayHealthyCardState
    extends State<BuildASimpleWayToStayHealthyCard> {
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
                    'A simple way to stay healthy',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.clear, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red),
                  SizedBox(width: 5),
                  Text('Welcome to Fit'),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Heart Points helps you see which activites are best for your health, and how you\'re preforming against American Heart Association recommendations.',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See Recommendations',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
