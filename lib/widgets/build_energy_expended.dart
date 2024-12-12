import 'package:flutter/material.dart';

class BuildEnergyExpended extends StatefulWidget {
  const BuildEnergyExpended({super.key});

  @override
  State<BuildEnergyExpended> createState() => _BuildEnergyExpendedState();
}

class _BuildEnergyExpendedState extends State<BuildEnergyExpended> {
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
                    'Energy expended',
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
                        '23 Cal',
                        style: Theme.of(context).textTheme.bodyLarge,
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
}
