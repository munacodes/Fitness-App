import 'package:flutter/material.dart';

class BuildSetAPaceCard extends StatefulWidget {
  const BuildSetAPaceCard({super.key});

  @override
  State<BuildSetAPaceCard> createState() => _BuildSetAPaceCardState();
}

class _BuildSetAPaceCardState extends State<BuildSetAPaceCard> {
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
                    'Set a pace for your walks',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(Icons.clear, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 200,
                    child: Text(
                      'Follow along with the beat to turn walking into a simple, effective way to exercise,',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    color: Colors.pink,
                  ),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Try paced walking',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
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
