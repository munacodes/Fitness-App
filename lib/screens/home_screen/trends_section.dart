import 'package:flutter/material.dart';

class TrendsSection extends StatefulWidget {
  const TrendsSection({
    super.key,
  });

  @override
  State<TrendsSection> createState() => _TrendsSectionState();
}

class _TrendsSectionState extends State<TrendsSection> {
  _buildHeartPointCard() {
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

  _buildStepsCard() {
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
                    'Steps',
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
                        '303',
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

  _buildEnergyExpendedCard() {
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
                    'Energy expended',
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
                        '23 Cal',
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
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeartPointCard(),
        SizedBox(height: 10),
        _buildStepsCard(),
        SizedBox(height: 10),
        _buildEnergyExpendedCard(),
      ],
    );
  }
}
