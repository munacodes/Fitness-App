import 'package:flutter/material.dart';

class BuildHowMuchSleepCard extends StatefulWidget {
  const BuildHowMuchSleepCard({super.key});

  @override
  State<BuildHowMuchSleepCard> createState() => _BuildHowMuchSleepCardState();
}

class _BuildHowMuchSleepCardState extends State<BuildHowMuchSleepCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How much sleep you need',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: 100,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Text(
                      'Fit works well when you connect your other health & fitness apps. Find compatible apps on Google Play to help you stay healthy.',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
